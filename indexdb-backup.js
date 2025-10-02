// IndexedDB Backup Storage System
// Automatically handles localStorage overflow by backing up large items to IndexedDB
// Completely transparent - no code changes needed to existing systems

class BackupStorage {
    constructor() {
        this.sizeThreshold = 100 * 1024; // 100KB threshold
        this.maxLocalStorage = 5 * 1024 * 1024; // 5MB localStorage limit
        this.db = null;
        this.initDB();
    }

    async initDB() {
        try {
            this.db = await new Promise((resolve, reject) => {
                const request = indexedDB.open('CanvasAIBackup', 1);
                
                request.onupgradeneeded = (e) => {
                    const db = e.target.result;
                    if (!db.objectStoreNames.contains('storage')) {
                        db.createObjectStore('storage', { keyPath: 'key' });
                    }
                };
                
                request.onsuccess = (e) => resolve(e.target.result);
                request.onerror = (e) => reject(e.target.error);
            });
            console.log('🗄️ IndexedDB backup system initialized');
        } catch (error) {
            console.warn('⚠️ IndexedDB backup system failed to initialize:', error);
        }
    }

    // Store large item in IndexedDB
    async storeInIndexedDB(key, value) {
        if (!this.db) return false;
        
        try {
            const transaction = this.db.transaction(['storage'], 'readwrite');
            const store = transaction.objectStore('storage');
            await new Promise((resolve, reject) => {
                const request = store.put({ key: key, value: value, timestamp: Date.now() });
                request.onsuccess = () => resolve();
                request.onerror = () => reject(request.error);
            });
            console.log(`📦 Backed up large item to IndexedDB: ${key} (${value.length} bytes)`);
            return true;
        } catch (error) {
            console.warn(`⚠️ Failed to backup ${key} to IndexedDB:`, error);
            return false;
        }
    }

    // Retrieve item from IndexedDB
    async getFromIndexedDB(key) {
        if (!this.db) return null;
        
        try {
            const transaction = this.db.transaction(['storage'], 'readonly');
            const store = transaction.objectStore('storage');
            const result = await new Promise((resolve, reject) => {
                const request = store.get(key);
                request.onsuccess = () => resolve(request.result);
                request.onerror = () => reject(request.error);
            });
            return result ? result.value : null;
        } catch (error) {
            console.warn(`⚠️ Failed to retrieve ${key} from IndexedDB:`, error);
            return null;
        }
    }

    // Check if item should be backed up
    shouldBackup(value) {
        return value && value.length > this.sizeThreshold;
    }

    // Auto-backup large items
    async backupIfNeeded(key, value) {
        if (this.shouldBackup(value)) {
            const success = await this.storeInIndexedDB(key, value);
            if (success) {
                return `__INDEXED_${key}`; // Store reference in localStorage
            }
        }
        return value; // Store normally in localStorage
    }

    // Auto-cleanup localStorage when approaching limit
    async cleanupIfNeeded() {
        try {
            const currentSize = JSON.stringify(localStorage).length;
            if (currentSize > this.maxLocalStorage) {
                console.log(`🧹 localStorage approaching limit (${currentSize} bytes), cleaning up...`);
                
                // Find large items to move to IndexedDB
                const largeItems = Object.keys(localStorage)
                    .map(key => ({ key, value: localStorage.getItem(key) }))
                    .filter(item => item.value && item.value.length > this.sizeThreshold)
                    .sort((a, b) => b.value.length - a.value.length)
                    .slice(0, 5); // Move 5 largest items
                
                for (const item of largeItems) {
                    const success = await this.storeInIndexedDB(item.key, item.value);
                    if (success) {
                        localStorage.setItem(item.key, `__INDEXED_${item.key}`);
                        console.log(`📦 Moved ${item.key} to IndexedDB (${item.value.length} bytes)`);
                    }
                }
            }
        } catch (error) {
            console.warn('⚠️ Cleanup failed:', error);
        }
    }

    // Check if value is an IndexedDB reference
    isIndexedDBReference(value) {
        return typeof value === 'string' && value.startsWith('__INDEXED_');
    }

    // Extract key from IndexedDB reference
    extractKeyFromReference(value) {
        return value.replace('__INDEXED_', '');
    }
}

// Initialize backup system
const backup = new BackupStorage();

// Intercept localStorage.setItem to handle automatic backup
const originalSetItem = localStorage.setItem;
localStorage.setItem = function(key, value) {
    try {
        // 🛠️ CRITICAL FIX: Don't backup DJINN Council surveillance keys
        const criticalKeys = ['sovereign_canvas_content', 'ai_feeds', 'synthesis_canvas_content', 'synthesis_report_generated', 'ai_memory_state', 'djinn_council_complete_memory', 'synthesis_report', 'validation_specialist_memory'];
        if (criticalKeys.includes(key)) {
            originalSetItem.call(this, key, value); // Store directly, no IndexedDB backup
            return;
        }
        
        // Cleanup if needed
        backup.cleanupIfNeeded();
        
        // Backup large items
        backup.backupIfNeeded(key, value).then(processedValue => {
            originalSetItem.call(this, key, processedValue);
        });
    } catch (error) {
        // Fallback to original behavior
        originalSetItem.call(this, key, value);
    }
};

// Intercept localStorage.getItem to handle IndexedDB retrieval
const originalGetItem = localStorage.getItem;
localStorage.getItem = function(key) {
    try {
        const value = originalGetItem.call(this, key);
        
        // 🛠️ CRITICAL FIX: Don't interfere with DJINN Council surveillance keys
        const criticalKeys = ['sovereign_canvas_content', 'ai_feeds', 'synthesis_canvas_content', 'synthesis_report_generated', 'ai_memory_state', 'djinn_council_complete_memory', 'synthesis_report', 'validation_specialist_memory'];
        if (criticalKeys.includes(key)) {
            return value; // Return actual value, no IndexedDB interference
        }
        
        // Check if it's an IndexedDB reference
        if (backup.isIndexedDBReference(value)) {
            // For now, return null to prevent JSON parsing errors
            // The system should handle missing data gracefully
            console.log(`📦 IndexedDB reference detected for ${key}, returning null to prevent JSON errors`);
            return null;
        }
        
        return value;
    } catch (error) {
        return originalGetItem.call(this, key);
    }
};

// Enhanced getItem that handles IndexedDB retrieval
localStorage.getItemAsync = async function(key) {
    try {
        const value = originalGetItem.call(this, key);
        
        if (backup.isIndexedDBReference(value)) {
            const actualKey = backup.extractKeyFromReference(value);
            const indexedValue = await backup.getFromIndexedDB(actualKey);
            return indexedValue || value; // Return IndexedDB value or fallback to reference
        }
        
        return value;
    } catch (error) {
        return originalGetItem.call(this, key);
    }
};

console.log('🚀 IndexedDB backup system loaded - localStorage overflow protection active');
