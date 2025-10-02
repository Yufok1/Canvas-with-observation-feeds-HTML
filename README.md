# Canvas AI Orchestration System

A streamlined web-based interface for AI interaction focused on the Canvas workspace. The system integrates with Ollama for AI model access and uses browser localStorage and IndexedDB for data persistence.

## 🌟 Visual README
**Experience the Enhanced Visual Documentation**: [https://yufok1.github.io/Canvas-with-observation-feeds-HTML/](https://yufok1.github.io/Canvas-with-observation-feeds-HTML/)

*Features Matrix rain animation, cyberpunk aesthetics, and interactive documentation experience.*

## 🎬 Live Demo
**Interactive Canvas Demonstration**: View the interface demonstration at: [https://yufok1.github.io/Canvas-with-observation-feeds-HTML/canvas-with-observation-feeds.html](https://yufok1.github.io/Canvas-with-observation-feeds-HTML/canvas-with-observation-feeds.html)

*Experience the full Canvas workspace with live AI agents, Matrix rain effects, and real-time synthesis capabilities.*

## 🌊 Matrix Rain Integration (Visual README Website Only)
The Visual README website features:
- **Dynamic Matrix Rain**: Cascading digital rain background effects powered by [Matrix-Rain-HTML-Background](https://github.com/Yufok1/Matrix-Rain-HTML-Background)
- **Cyberpunk Aesthetics**: Dark theme with neon accents and futuristic styling  
- **Interactive Elements**: Hover effects and animated transitions throughout the interface
- **Immersive Experience**: Full-screen Matrix-style visual environment for enhanced productivity

The Canvas application itself uses cyberpunk gradients and pulse animations, but does not include Matrix rain effects.

## System Components

### Core Architecture
- **Cloud Integration**: Optional Ollama Turbo proxy for enhanced AI capabilities  
- **Persistent Storage**: Dual storage system (localStorage + IndexedDB) for data reliability
- **Streamlined Operation**: Focus on Canvas productivity without external governance overhead

### File Structure
- `canvas-with-observation-feeds.html`: Main workspace interface with 5 AI agents + JACK terminal (322KB)
- `launch-canvas.bat`: Canvas launcher with optional cloud proxy integration (6.8KB)
- `ollama-turbo-proxy.py`: Cloud API proxy server for Ollama Turbo access (5.6KB)
- `indexdb-backup.js`: Storage management and overflow protection (7.9KB)
- `setup-api-key.bat`: Interactive API key configuration utility (3.9KB)

### Canvas AI Systems (5 agents)
- **DJINN**: Strategic analysis and governance insights
- **NAZAR**: Consciousness and emotional analysis  
- **NARRA**: Pattern recognition and narrative synthesis
- **WHALE**: Deep analysis and memory processing
- **WATCHTOWER**: System monitoring and metrics


**Plus integrated JACK Terminal for direct AI interaction and coordination**

### JACK Terminal Integration

The JACK Terminal is a built-in console within the Canvas UI that provides:
- **Direct command-line interaction** with all AI agents
- **Live status monitoring** and orchestration feedback
- **Rich CLI features**: send commands, view responses, and coordinate agent actions
- **Mirror of system events**: see real-time logs and diagnostics
- **Exportable session history** for audit and review

**Usage:**
- Access JACK via the dedicated panel in the Canvas dashboard
- Type commands to interact with agents, trigger synthesis, or request diagnostics
- View live feedback and system status in the terminal window

**Technical Notes:**
- JACK is fully integrated with the event-driven architecture
- Terminal output is synchronized with Canvas state and agent responses
- All commands and responses are stored locally for privacy

---

### Recent Improvements

#### Session Management & Feed Cleanup
- **Automatic Feed Clearing**: Old AI feeds are automatically cleared on page refresh using sessionStorage detection
- **Fresh Session Detection**: Prevents stale feed data from previous sessions causing display issues
- **Clean Initialization**: Each browser session starts with a clean slate while preserving in-session data

#### Model Switching Enhancements
- **Synchronized Dropdowns**: Model selector now instantly updates when toggling between Local/Cloud modes
- **localStorage Race Fix**: Added 10ms sync delays after state changes to prevent read/write conflicts
- **Proper Initialization Order**: `initializeTurboMode()` now runs before `populateModelSelector()` for correct startup state

#### Jack Terminal Integration
- **Non-Critical Error Display**: Connection failures shown as info messages instead of alarming red errors
- **User-Friendly Messages**: "Jack mirror offline – no connection (Canvas unaffected)" instead of raw errors
- **Reduced Console Noise**: Eliminated console.error() spam, browser network logs still visible but ignorable

#### CORS & Request Handling
- **Clean Request Headers**: Removed invalid Access-Control-* headers from requests (those are response-only headers)
- **Proper CORS Flow**: Fixed client-side header issues that were causing preflight failures
- **Local/Cloud Routing**: Correct endpoint selection based on mode (11434 for local, 11438 for cloud proxy)

### Proxy Security Improvements

The Ollama Turbo proxy now includes:
- **Localhost binding**: Only accepts connections from `127.0.0.1` for security
- **CORS whitelist**: Only allows requests from trusted origins (e.g., `http://localhost:8000`)
- **API key hidden in logs**: No longer prints the API key to the console

**Recommendation:** Always keep your API key secret and only run the proxy on trusted machines.

## Quick Start

### Canvas-Only Launch (Recommended)
```bash
# Launch Canvas with local Ollama
launch-canvas.bat

# Launch Canvas with cloud proxy (requires API key)
set OLLAMA_TURBO_API_KEY=your_api_key_here
launch-canvas.bat
```

### System Requirements
- **Local AI**: [Ollama](https://ollama.ai/) installed and running on port 11434
- **Cloud AI (Optional)**: Ollama Turbo API key for enhanced capabilities
- **Browser**: Modern browser with localStorage and IndexedDB support (Chrome, Firefox, Safari, Edge)
- **Server**: Python 3.7+ for proxy server (if using cloud features)
- **System**: 4GB RAM minimum for local AI models

## Architecture Features

### Storage System
- **localStorage**: Real-time Canvas state and AI feed synchronization
- **IndexedDB**: Persistent storage with overflow protection for large datasets
- **Backup System**: Automatic data preservation with surgical key exclusions
- **Memory Management**: Intelligent cleanup and optimization routines
- **Session-Based Feed Clearing**: Automatic cleanup of old AI feeds on page refresh to prevent stale data

### AI Integration
- **Local Ollama**: Direct integration with local AI models on port 11434
- **Cloud Proxy**: Optional proxy server on port 11438 for Ollama Turbo access
- **CORS Handling**: Transparent browser security bypass for cloud API calls
- **Request Management**: Intelligent routing between local and cloud AI services
- **Model Switching**: Real-time toggle between local and cloud models with synchronized dropdown updates
- **Race Condition Protection**: 10ms localStorage sync delays ensure proper state transitions

### Canvas Interface Functions
- **5 AI Agent System**: Specialized agents for comprehensive analysis
- **AI Agent Notepads**: Individual notepad interfaces for each agent
- **Observation Tools**: Mark patterns, anomalies, correlations, insights, and notes
- **Entity Chat System**: Direct chat interface with AI entities
- **Triage Diagnostics**: System diagnostic and troubleshooting capabilities
- **Smart Content Reduction**: AI-powered content optimization and summarization
- **Jack Terminal Mirror**: Full terminal integration with status monitoring and controls (connection failures displayed as non-critical info messages)
- **Live Feed Management**: Real-time AI observation feeds with persistent storage
- **Synthesis Engine**: Advanced analysis synthesis with consensus building
- **Memory System**: Comprehensive memory management with clearance functions
- **Export Capabilities**: Data export and analysis report generation
- **Cyberpunk Aesthetics**: Dark theme with pulse animations and neon styling

## Usage Modes

### Standalone Canvas Operation
- **Launch**: `launch-canvas.bat`
- **Access**: `http://localhost:8000/canvas-with-observation-feeds.html`
- **Features**: Full Canvas functionality with local AI integration
- **Storage**: localStorage + IndexedDB for complete data persistence

### Cloud-Enhanced Operation  
- **Setup**: Set `OLLAMA_TURBO_API_KEY` environment variable
- **Launch**: `launch-canvas.bat` (automatically detects API key)
- **Proxy**: Automatic proxy server startup on port 11438
- **Features**: Enhanced AI capabilities via Ollama Turbo cloud service

## Technical Specifications

### Performance Metrics
- **Canvas Size**: 322KB optimized HTML with embedded CSS/JS
- **AI Agents**: 5 specialized systems with coordinated analysis
- **Storage Capacity**: Unlimited via IndexedDB with intelligent overflow management
- **Response Time**: Sub-second local AI, 2-30s cloud AI (model dependent)
- **Memory Usage**: Optimized with automatic cleanup and garbage collection

### API Integration
- **Local Ollama**: Direct HTTP requests to localhost:11434
- **Cloud Proxy**: Python server forwarding to Ollama Turbo with CORS handling
- **Authentication**: Bearer token for cloud API access
- **Timeout Management**: Configurable timeouts for different operation types
- **Error Handling**: Comprehensive error recovery and user feedback

### Data Management
- **Real-time Sync**: Instant Canvas state updates across browser sessions
- **Persistent Storage**: IndexedDB for large datasets and analysis results
- **Backup Strategy**: Automatic backup with critical key protection
- **Export Options**: JSON export for analysis results and system state
- **Privacy**: All data stored locally, no external transmission except to configured AI services

## Project Links

**GitHub Repository**: [https://github.com/Yufok1/Canvas-with-observation-feeds-HTML](https://github.com/Yufok1/Canvas-with-observation-feeds-HTML)

**Llama Jack**: [https://github.com/Yufok1/Llama-Jack](https://github.com/Yufok1/Llama-Jack) - AI orchestration and terminal integration

**Matrix Rain Background**: [https://github.com/Yufok1/Matrix-Rain-HTML-Background](https://github.com/Yufok1/Matrix-Rain-HTML-Background)

<!-- Matrix Rain Effect: Inspired by https://github.com/Yufok1/Matrix-Rain-HTML-Background -->

## License

MIT License - See LICENSE file for details.

## Contributing

See CONTRIBUTING.md for development guidelines and contribution process.

---

**Canvas AI Orchestration System** - Streamlined, powerful, focused with Matrix-powered cyberpunk aesthetics.

<!-- Matrix Rain Styles and Animation -->
<style>
/* Matrix Rain Styles - Applied immediately */
#matrixRainCanvas { font-family: monospace; }
/* Apply Matrix styling immediately - clean white text for better readability */
body { background: radial-gradient(ellipse at center, #0a0a0a 0%, #1a1a2e 50%, #0f0f23 100%) !important; color: #ffffff !important; font-family: 'Courier New', monospace !important; margin: 0; padding: 20px; }
h1, h2, h3, h4, h5, h6 { color: #ffffff !important; text-shadow: 0 0 10px rgba(255, 255, 255, 0.5) !important; }
code { background: rgba(0, 0, 0, 0.95) !important; border: 2px solid #ffffff !important; color: #ffffff !important; padding: 2px 4px; border-radius: 3px; }
pre { background: rgba(0, 0, 0, 0.98) !important; border: 2px solid #ffffff !important; color: #ffffff !important; padding: 15px; border-radius: 8px; overflow-x: auto; }
a { color: #00ff41 !important; text-decoration: underline !important; font-weight: bold !important; text-shadow: 0 0 8px rgba(0, 255, 65, 0.7) !important; }
a:hover { color: #ff6b6b !important; text-shadow: 0 0 12px rgba(255, 107, 107, 1.0) !important; }
/* Additional Matrix styling - clean white theme */
.markdown-body { background: transparent !important; color: #ffffff !important; }
.repository-content { background: transparent !important; }
</style>
<canvas id="matrixRainCanvas" style="position:fixed;top:0;left:0;width:100vw;height:100vh;z-index:0;pointer-events:none;"></canvas>
<script>
// Matrix Rain Animation - Enhanced visibility
let matrixCanvas, matrixCtx, matrixDrops, matrixInterval;
function initMatrixRain() {
  matrixCanvas = document.getElementById('matrixRainCanvas');
  if (!matrixCanvas) { console.log('Matrix Rain: Canvas not found'); return; }
  matrixCtx = matrixCanvas.getContext('2d');
  if (!matrixCtx) { console.log('Matrix Rain: Could not get canvas context'); return; }
  console.log('Matrix Rain: Initializing...');
  // Set canvas size
  function resizeCanvas() {
    matrixCanvas.width = window.innerWidth;
    matrixCanvas.height = window.innerHeight;
    console.log(`Matrix Rain: Canvas resized to ${matrixCanvas.width}x${matrixCanvas.height}`);
  }
  resizeCanvas();
  window.addEventListener('resize', resizeCanvas);
  // Initialize drops
  const fontSize = 14;
  const columns = Math.floor(matrixCanvas.width / fontSize);
  matrixDrops = [];
  for (let i = 0; i < columns; i++) { matrixDrops[i] = Math.random() * -100; }
  console.log(`Matrix Rain: Initialized ${columns} columns`);
  // Start animation
  startMatrixAnimation();
}
function startMatrixAnimation() {
  if (matrixInterval) { clearInterval(matrixInterval); }
  console.log('Matrix Rain: Starting animation');
  matrixInterval = setInterval(drawMatrixRain, 50);
}
function drawMatrixRain() {
  const fontSize = 14;
  const opacity = 0.9;
  // Clear canvas with fade effect
  matrixCtx.fillStyle = 'rgba(0, 0, 0, 0.05)';
  matrixCtx.fillRect(0, 0, matrixCanvas.width, matrixCanvas.height);
  // Set font
  matrixCtx.font = `${fontSize}px monospace`;
  // Matrix characters
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789@#$%^&*()*&^%+-/~{[|`]}';
  const columns = Math.floor(matrixCanvas.width / fontSize);
  // Canvas site color palette for harmonic waves
  const canvasColors = ['#00ff41', '#4ecdc4', '#ff6b6b', '#cc88cc', '#001122', '#002233'];
  for (let i = 0; i < columns; i++) {
    // Random character
    const char = characters[Math.floor(Math.random() * characters.length)];
    // Position
    const x = i * fontSize;
    const y = matrixDrops[i] * fontSize;
    // Harmonic wave effect (from the actual Harmonic Waves pattern)
    const wave = Math.sin(Date.now() / 1000 + i * 0.1) * 5;
    const harmonicY = y + wave;
    // Harmonic color cycling (from the actual Harmonic Waves pattern)
    const hue = 120 + Math.sin(Date.now() / 2000 + i * 0.05) * 60;
    const hslColor = `hsl(${hue}, 100%, 50%)`;
    // But use Canvas colors instead of HSL for the harmonic effect
    const colorIndex = Math.floor((hue / 360) * canvasColors.length) % canvasColors.length;
    const color = canvasColors[colorIndex];
    matrixCtx.fillStyle = color;
    matrixCtx.globalAlpha = opacity;
    matrixCtx.fillText(char, x, harmonicY);
    // Slower drop speed (from the actual Harmonic Waves pattern)
    matrixDrops[i] += 0.8;
    if (matrixDrops[i] * fontSize > matrixCanvas.height) { matrixDrops[i] = 0; }
  }
}
// Initialize immediately when script loads
console.log('Matrix Rain: Script loaded, initializing...');
initMatrixRain();
// Also try on DOM content loaded as backup
document.addEventListener('DOMContentLoaded', function() {
  console.log('Matrix Rain: DOM loaded, ensuring initialization...');
  if (!matrixInterval) { initMatrixRain(); }
});
</script>