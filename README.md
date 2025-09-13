# 🜂 Canvas with Live AI Observation Feeds

A sovereign web interface for real-time AI observation, analysis, and collaborative synthesis. This application provides a canvas for user observations while integrating live intelligence streams from multiple AI systems, ensuring user sovereignty and comprehensive analysis capabilities.

**Experience the god-tier launch with cinematic ASCII art startup sequences and enjoy an enhanced interface featuring square grid layout, real-time orchestration status, dynamic resizing, and professional user experience.**

## Features

### Core Functionality
- **Sovereign Canvas**: User-controlled workspace for observations and assessments
- **Live AI Feeds**: Real-time intelligence streams from specialized AI systems:
  - ⚖️ **DJINN**: Governance & Strategic Analysis
  - 🔮 **NAZAR**: Fractal & Consciousness Analysis  
  - 🌊 **NARRA**: Pattern Recognition & Synthesis
  - 🐋 **WHALE**: Deep Interrogation & Memory
  - 🔱 **WATCHTOWER**: Operational Monitoring & Metrics

### Advanced Capabilities
- **AI Collaborative Synthesis**: Multi-system analysis with unified synthesis
- **Hierarchical Governance**: NAZAR-led triage council with DJINN oversight
- **Interactive Chat**: Direct communication with AI entities
- **Mouse Tracking**: Behavioral analysis and insights
- **Real-time Metrics**: System performance monitoring
- **Auto-save & Export**: Persistent data management
- **Canvas Change Detection**: Intelligent content analysis triggers
- **Dynamic GUI Resizing**: CTRL + Mousewheel for instant interface scaling
- **Real-time Orchestration Status**: Live AI system confidence monitoring
- **Enhanced Layout**: Square grid design for optimal space utilization
- **God-tier Launch Experience**: ASCII art batch files for cinematic startup

### Technical Features
- **Activity-Based Polling**: Dynamic AI update intervals based on user engagement
- **Intelligent Caching**: Optimized response caching with configurable durations
- **Parallel Processing**: Concurrent AI system queries for efficiency
- **Memory Management**: Conversational continuity across sessions
- **Content Complexity Analysis**: Dynamic domain detection and insight refresh
- **Full-Height AI Feeds**: Optimized panel layout for maximum content visibility
- **Active Synthesis Indicators**: Dynamic status messages showing AI processing state

## Requirements


### Software Dependencies
- **Ollama**: Local AI model server (version 0.1.0+ required)
- **Modern Web Browser**: Chrome 90+, Firefox 88+, Safari 14+, Edge 90+
- **Local Server**: Required for proper operation and local-only traffic (see below)

### AI Models
The application requires the following Ollama models:
- `gemma3:1b` (used for all AI systems)

### System Requirements
- **RAM**: 4GB minimum, 8GB recommended
- **Storage**: 2GB free space for models
- **Network**: Local Ollama connection (localhost:11434)

## Quick Start Guide

### Option 1: Professional Launch (Recommended)
Use the provided batch files for the ultimate launch experience:

1. **Double-click `launch-canvas.bat`** (or `launch-canvas-fixed.bat` for pipe-safe version)
2. Watch the cinematic ASCII art startup sequence
3. The script will automatically:
   - Start Ollama server (if not already running)
   - Launch Python web server
   - Open your browser to the application
   - Display real-time status updates

**That's it!** Enjoy the god-tier launch experience with full automation.

### Option 2: Manual Setup
If you prefer manual control:

#### Step 1: Download the Repository
```bash
git clone https://github.com/Yufok1/Canvas-with-observation-feeds-HTML.git
cd Canvas-with-observation-feeds-HTML
```

#### Step 2: Install Ollama
- Download from: https://ollama.ai/
- Install and run Ollama
- Pull the required model:
```bash
ollama pull gemma3:1b
```

#### Step 3: Start Ollama Server
```bash
ollama serve
```

#### Step 4: Start Local Web Server
**Important**: You must start the server from the project directory that contains the HTML file.

```bash
python -m http.server 8000
```

**Why this matters**: The web server serves files from the directory where it's started. If you start the server from a different directory, you'll get 404 errors when trying to access the HTML file.

#### Step 5: Access the Application
Open your browser and go to: `http://localhost:8000/canvas-with-observation-feeds.html`

**That's it!** The AI features will now work because both the web app and Ollama are running locally.

### Enhanced Interface Features
Once launched, you'll experience:
- **Square Layout**: Optimized 2x2 grid for balanced viewing
- **Full-Height Feeds**: Maximum content visibility in each panel
- **Real-Time Status**: Live orchestration updates in the header
- **Dynamic Placeholders**: Context-aware status messages
- **Keyboard Shortcuts**: Prominent CTRL+mousewheel display for resizing
- **No Breathing Effect**: Clean, professional animations
- **Active Synthesis Indicators**: Visual feedback for AI processing

## Why GitHub Pages Won't Work

The GitHub Pages version (`https://yufok1.github.io/...`) **cannot connect to Ollama** due to fundamental browser security restrictions:

### GitHub Pages Demo (UI Only)
You can view the interface at: [https://yufok1.github.io/Canvas-with-observation-feeds-HTML/canvas-with-observation-feeds.html](https://yufok1.github.io/Canvas-with-observation-feeds-HTML/canvas-with-observation-feeds.html)

**This is for UI demonstration only** - the AI features will not work due to CORS restrictions.

### CORS Security Restriction
- Browsers block remote websites from accessing `localhost` resources
- This is a security feature to prevent malicious sites from accessing your local services
- GitHub Pages is considered a "remote origin" even though you own the repository

### The Error You See
```
Access to fetch at 'http://localhost:11434/api/generate' from origin 'https://yufok1.github.io' has been blocked by CORS policy
```

This error is **expected and cannot be fixed** for the GitHub Pages version.

### Browser Workarounds (Not Recommended)
Some browsers allow disabling CORS for development, but this:
- Reduces your security
- May not work reliably
- Is not suitable for production use

**Recommendation**: Use the local version - it's more secure, faster, and fully functional. The GitHub Pages version is only for UI demonstration.

```bash
# Download and install Ollama from https://ollama.ai/
# Follow platform-specific installation instructions
```

### 2. Pull Required Models
```bash
# Pull the unified model used by all AI systems
ollama pull gemma3:1b
```

### 3. Start Ollama Server
```bash
# Start Ollama in a terminal
ollama serve
```


### 4. Launch the Application
You **must** run a local web server to access the application. Directly opening the HTML file (using `file://`) will cause issues with browser security, localStorage, and AI connectivity.

Start a local server (choose one):
```bash
# Using Python (recommended)
python -m http.server 8000

# Using Node.js (alternative)
npx http-server -p 8000
```

Then access the app via: [http://localhost:8000/canvas-with-observation-feeds.html](http://localhost:8000/canvas-with-observation-feeds.html)

The interface will automatically connect to Ollama on localhost:11434 for all AI features. All traffic and data remain local to your machine.

## Usage

### Getting Started
1. **Canvas Workspace**: Begin by typing observations in the main canvas area
2. **AI Monitoring**: AI systems automatically analyze your content and provide insights
3. **Interactive Chat**: Use the chat interface to communicate directly with AI entities
4. **Synthesis**: Click "🎭 Synthesize" to trigger collaborative AI analysis

### Key Interactions
- **Observation Tools**: Mark content with pattern, anomaly, correlation, insight, or note markers
- **Canvas Controls**: Save, export, or clear your work
- **AI Feeds**: Monitor real-time intelligence streams in the feeds panel
- **Metrics Dashboard**: View system performance and correlations
- **Triage Force**: Access advanced analysis capabilities via the triage button
- **Browser Controls**: Use CTRL + mousewheel to resize windows and interface elements

### Advanced Features
- **Proactive Engagement**: AI systems may initiate conversations based on content patterns
- **Memory Continuity**: Previous interactions are remembered across sessions
- **Content Analysis**: Complex content triggers enhanced AI analysis
- **Mouse Insights**: Behavioral patterns are analyzed for user experience optimization

## Architecture

### System Components
- **Frontend**: Single HTML file with embedded CSS/JavaScript
- **AI Integration**: Direct API calls to local Ollama instance
- **Data Storage**: Browser localStorage for persistence
- **Caching System**: Intelligent response caching with Map-based storage
- **Polling Engine**: Activity-aware update scheduling

### AI System Hierarchy
```
NAZAR Triage Council
├── Internal Council (Intuition, Fractal, Emotional, Pattern)
├── DJINN Governance Oversight
└── Entity Authorization & Response Routing
```

### Data Flow
1. User input → Canvas change detection
2. Content analysis → AI system activation
3. Parallel queries → Response aggregation
4. Synthesis coordination → Unified insights
5. Memory update → Persistent storage

## Configuration

### Model Assignment
Models are configured in the `optimizedModelMap` object:
```javascript
const optimizedModelMap = {
    djinn: "gemma3:1b",
    nazar: "gemma3:1b",
    // ... other systems
};
```

#### Ollama Agent Interchangeability
The AI systems are fully interchangeable with any Ollama-compatible model. To change models:

1. **Pull the desired model**:
   ```bash
   ollama pull [model-name]
   # Examples:
   ollama pull llama2:7b
   ollama pull mistral:7b
   ollama pull codellama:7b
   ```

2. **Update the configuration** in `canvas-with-observation-feeds.html`:
   ```javascript
   const optimizedModelMap = {
       djinn: "llama2:7b",        // Governance & strategic analysis
       nazar: "mistral:7b",       // Consciousness & fractal analysis
       narra: "codellama:7b",     // Pattern recognition
       whale: "gemma3:1b",        // Memory & interrogation
       watchtower: "llama2:7b"    // Monitoring & metrics
   };
   ```

3. **Considerations for model selection**:
   - **Context window**: Larger models (7B+) handle longer conversations better
   - **Speed vs. quality**: Smaller models (1B-3B) are faster but less detailed
   - **Specialization**: Code-focused models work well for technical analysis
   - **Memory usage**: Larger models require more RAM
   - **Compatibility**: Ensure the model supports the required API endpoints

4. **Testing new models**:
   - Start with one system to test compatibility
   - Monitor response quality and speed
   - Adjust polling intervals if needed for slower models
   - Check console logs for any API compatibility issues

### Caching Settings
Adjust cache durations in the `intelligentCache` configuration:
```javascript
CACHE_DURATION: 180000,    // 3 minutes for responses
CONTEXT_DURATION: 300000,  // 5 minutes for context
SYNTHESIS_DURATION: 600000 // 10 minutes for synthesis
```

### Polling Intervals
Activity-based polling intervals:
```javascript
pollingIntervals: {
    high: 120000,    // 2 minutes when active
    medium: 300000,  // 5 minutes when moderate
    low: 600000      // 10 minutes when idle
}
```

## Troubleshooting

### Common Issues

**Batch File Won't Start**
- Use `launch-canvas-fixed.bat` if you encounter pipe character issues
- Ensure Python is installed and in your PATH
- Run as Administrator if permission errors occur
- Check that the batch file is in the same directory as the HTML file

**Ollama Connection Failed**
- Ensure Ollama is running: `ollama serve`
- Check port 11434 is available
- Verify model is pulled: `ollama list`
- Try restarting Ollama if connection issues persist

**Slow Performance**
- Reduce polling frequency in configuration
- Clear browser cache and localStorage
- Use a local server instead of file:// protocol
- Close other resource-intensive applications

**AI Responses Not Appearing**
- Check browser console for errors (F12)
- Verify model compatibility with gemma3:1b
- Ensure sufficient system resources (4GB+ RAM)
- Try clearing AI memory and restarting

**Interface Layout Issues**
- Use CTRL+mousewheel to resize panels
- Refresh the page if layout appears broken
- Clear browser cache if CSS doesn't load properly
- Ensure modern browser (Chrome 90+, Firefox 88+, Edge 90+)

**Memory Issues**
- Clear AI memory via the "🧠 Clear Memory" button
- Reset localStorage if problems persist
- Monitor RAM usage - close other applications if needed
- Consider restarting the browser session

### Debug Mode
Enable verbose logging by opening browser developer tools (F12) and monitoring the console for detailed operation logs. Look for:
- AI orchestration status messages
- Network request/response details
- Canvas change detection events
- Memory usage warnings

### Batch File Troubleshooting
If the automated launch fails:
1. Manually start Ollama: `ollama serve`
2. Start web server: `python -m http.server 8000`
3. Open browser to: `http://localhost:8000/canvas-with-observation-feeds.html`
4. Check console for any remaining errors

## Contributing

### Development Setup
1. Fork the repository
2. Make changes to the HTML file
3. Test using the provided batch files (`launch-canvas.bat` or `launch-canvas-fixed.bat`)
4. Ensure cross-browser compatibility
5. Verify all enhanced UI features work correctly (square layout, real-time status, shortcuts)

### Testing Enhanced Features
- **Layout Testing**: Verify 2x2 grid layout and CTRL+mousewheel resizing
- **Status Updates**: Confirm real-time orchestration status in header
- **Batch Files**: Test both batch file variants for proper startup sequence
- **Performance**: Monitor memory usage with active AI synthesis
- **Cross-browser**: Test on Chrome, Firefox, and Edge

### Code Style
- Use consistent indentation (4 spaces)
- Comment complex logic sections
- Maintain separation of concerns in JavaScript functions
- Follow HTML5 semantic standards
- Preserve enhanced UI features and animations

### Feature Requests
- Open issues for new AI system integrations
- Suggest improvements to the governance hierarchy
- Propose enhancements to the synthesis process
- Request UI/UX improvements for the orchestration interface

## License

This project is provided as-is for educational and research purposes. Please ensure compliance with Ollama's licensing terms and any applicable AI usage policies.

## Support

For issues or questions:
- Check the troubleshooting section above
- Review browser console logs for error details
- Ensure Ollama is properly configured and running

---


**Note**: This application requires a local Ollama installation **and** a local web server. All AI processing and data storage are strictly local—no external servers are used. Monitor your system's performance and adjust polling intervals as needed.

https://github.com/Yufok1/Canvas-with-observation-feeds-HTML

## Matrix Rain Effect

The Matrix rain background effect in this README is powered by:  
**[Matrix-Rain-HTML-Background](https://github.com/Yufok1/Matrix-Rain-HTML-Background)**

<!-- Matrix Rain Effect: Inspired by https://github.com/Yufok1/Matrix-Rain-HTML-Background -->
<!-- Matrix Rain Background Effect -->
<div style="position: relative; z-index: 1;">
<canvas id="matrixRainCanvas" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: -1; pointer-events: none; opacity: 0.4; background: transparent;"></canvas>

<style>
/* Matrix Rain Styles - Applied immediately */
#matrixRainCanvas {
    font-family: monospace;
}

/* Apply Matrix styling immediately - clean white text for better readability */
body {
    background: radial-gradient(ellipse at center, #0a0a0a 0%, #1a1a2e 50%, #0f0f23 100%) !important;
    color: #ffffff !important;
    font-family: 'Courier New', monospace !important;
    margin: 0;
    padding: 20px;
}

h1, h2, h3, h4, h5, h6 {
    color: #ffffff !important;
    text-shadow: 0 0 10px rgba(255, 255, 255, 0.5) !important;
}

code {
    background: rgba(0, 0, 0, 0.95) !important;
    border: 2px solid #ffffff !important;
    color: #ffffff !important;
    padding: 2px 4px;
    border-radius: 3px;
}

pre {
    background: rgba(0, 0, 0, 0.98) !important;
    border: 2px solid #ffffff !important;
    color: #ffffff !important;
    padding: 15px;
    border-radius: 8px;
    overflow-x: auto;
}

a {
    color: #00ff41 !important;
    text-decoration: underline !important;
    font-weight: bold !important;
    text-shadow: 0 0 8px rgba(0, 255, 65, 0.7) !important;
}

a:hover {
    color: #ff6b6b !important;
    text-shadow: 0 0 12px rgba(255, 107, 107, 1.0) !important;
}

/* Additional Matrix styling - clean white theme */
.markdown-body {
    background: transparent !important;
    color: #ffffff !important;
}

.repository-content {
    background: transparent !important;
}
</style>

<script>
// Matrix Rain Animation - Enhanced visibility
let matrixCanvas, matrixCtx, matrixDrops, matrixInterval;

function initMatrixRain() {
    matrixCanvas = document.getElementById('matrixRainCanvas');
    if (!matrixCanvas) {
        console.log('Matrix Rain: Canvas not found');
        return;
    }
    
    matrixCtx = matrixCanvas.getContext('2d');
    if (!matrixCtx) {
        console.log('Matrix Rain: Could not get canvas context');
        return;
    }
    
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
    
    for (let i = 0; i < columns; i++) {
        matrixDrops[i] = Math.random() * -100;
    }
    
    console.log(`Matrix Rain: Initialized ${columns} columns`);
    
    // Start animation
    startMatrixAnimation();
}

function startMatrixAnimation() {
    if (matrixInterval) {
        clearInterval(matrixInterval);
    }
    
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
        if (matrixDrops[i] * fontSize > matrixCanvas.height) {
            matrixDrops[i] = 0;
        }
    }
}

// Initialize immediately when script loads
console.log('Matrix Rain: Script loaded, initializing...');
initMatrixRain();

// Also try on DOM content loaded as backup
document.addEventListener('DOMContentLoaded', function() {
    console.log('Matrix Rain: DOM loaded, ensuring initialization...');
    if (!matrixInterval) {
        initMatrixRain();
    }
});
</script>
