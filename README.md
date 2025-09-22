# Canvas AI Orchestration System

A web-based interface for AI interaction consisting of two HTML files: a canvas workspace and a council governance interface. The system integrates with Ollama for AI model access and uses browser localStorage for data persistence.

## 🌟 Visual README
**Experience the Enhanced Visual Documentation**: [https://yufok1.github.io/Canvas-with-observation-feeds-HTML/](https://yufok1.github.io/Canvas-with-observation-feeds-HTML/)

*Features Matrix rain animation, cyberpunk aesthetics, and interactive documentation experience.*

## System Components

### File Structure
- `canvas-with-observation-feeds.html`: Main workspace interface with 5 AI systems
- `djinn-council-shadow-governance.html`: Council interface with 5 members and validation agents
- `ollama-turbo-proxy.py`: Optional proxy server for cloud AI models
- Batch launch scripts for Windows

### Canvas AI Systems (5 agents)
- DJINN: Governance-focused analysis
- NAZAR: Consciousness and emotional analysis
- NARRA: Pattern recognition
- WHALE: Deep analysis and memory processing
- WATCHTOWER: System monitoring and metrics

### Council Members (5 agents)
- Pattern & Witness: Document structure analysis
- Recursive Wisdom: Knowledge synthesis
- Creative Paradox: Creative analysis
- Sovereign Boundaries: Autonomy analysis
- Echo & Memory: Memory coordination

### Validation System (7 agents)
- Primary Validator: Initial response validation
- Refinement Specialist: Response improvement coaching
- Recovery Agent: Error handling for failed validations
- Pattern Recognition Engine: Predictive analysis
- Efficiency Optimizer: Performance management
- Quality Assurance Monitor: Meta-validation oversight
- Validation Synthesizer: Synthesis of validation results

### Intelligence Officer
- Chat interface accessible via footer button
- Accesses council member reports and system data
- Provides system health analysis
- Maintains notepad system for observations and insights

### Technical Features
- Model selection dropdown affecting all AI agents
- localStorage-based data persistence
- Cross-window communication between Canvas and Council interfaces
- Response caching system
- Memory management with conversation history storage
- Export functionality for analysis reports
- Content-first validation system (no forced response formatting)
- Synthesis round grouping for AI feed display

## Operating Modes

### Standalone Canvas Mode (Port 8000)
- Launch: `launch-canvas.bat`
- Contains: Canvas interface with 5 AI systems
- Polling: Automatic content analysis
- Models: Local Ollama or cloud models via proxy

### Council-Integrated Mode (Port 8080)
- Launch: `LAUNCH_CANVAS_SURVEILLANCE.bat`
- Contains: Canvas + Council interfaces
- Event-driven: Council responds to synthesis events
- Full system: All 17 AI agents

### Technical Implementation
- JavaScript-based AI integration
- HTTP requests to Ollama API (local or cloud)
- localStorage for data persistence
- CSS Grid layout for responsive design
- Event-driven processing for Council mode
- Python proxy server for cloud models (optional)

## Implemented Features

### Canvas Interface Functions
- Text area for user input
- AI feed display showing last 5 synthesis rounds
- Real-time metrics panel with system statistics
- Chat interface for AI entity interaction
- Synthesis controls and status indicators
- Model selection dropdown for all AI agents

### Council Interface Functions
- 5 council member analysis panels
- Consensus report display (council intelligence perspective)
- Intelligence Officer report generation (system oversight perspective)
- Export functionality for complete analysis packages
- Maximizable panels for detailed viewing
- Advanced analysis panel with system metrics

### Data Management
- localStorage persistence across browser sessions
- Memory system with conversation history storage
- Response caching to reduce redundant AI calls
- Export system for complete analysis packages
- Cross-window data synchronization between Canvas and Council
- IndexedDB backup for large data storage

## Technical Requirements

### System Requirements
- Windows, macOS, or Linux operating system
- Modern web browser (Chrome, Firefox, Safari, Edge)
- 4GB RAM minimum for local AI models
- Python 3.7+ (for cloud proxy server)

### AI Model Support
- **Local Models**: Via Ollama installation (llama3.2, gemma3, mistral, codellama, qwen2.5, deepseek)
- **Cloud Models**: Via optional proxy server (large parameter models up to 671B)
- **Model Selection**: Dropdown interface affects all AI agents simultaneously
- **API Integration**: HTTP requests to Ollama API endpoints

### Data Storage
- Browser localStorage for conversation history and settings
- IndexedDB backup for large datasets
- Session-based memory with configurable retention
- Export functionality to JSON files
- No external database required

## Setup Instructions

### Prerequisites
1. Install Ollama from https://ollama.ai/ (for local models)
2. Download and install desired AI models: `ollama pull qwen2.5:1.5b`
3. Start Ollama service: `ollama serve`

### Launch Options

#### Standalone Canvas Mode
- Run: `launch-canvas.bat`
- Port: 8000
- Contains: Canvas interface with 5 AI systems
- Access: `http://localhost:8000/canvas-with-observation-feeds.html`

#### Council-Integrated Mode
- Run: `LAUNCH_CANVAS_SURVEILLANCE.bat`
- Port: 8080
- Contains: Canvas + Council interfaces with all 17 AI agents
- Access: `http://localhost:8080/canvas-with-observation-feeds.html` (Canvas)
- Access: `http://localhost:8080/djinn-council-shadow-governance.html` (Council)

### Cloud Models (Optional)
1. Set API key: `set OLLAMA_TURBO_API_KEY=your_api_key`
2. Run proxy: `python ollama-turbo-proxy.py`
3. Use model selection dropdown in interface

## Usage

### Basic Operation
1. Enter text in canvas workspace
2. AI systems automatically analyze content
3. View AI responses in live feeds panel
4. Use synthesis controls to trigger collaborative analysis
5. Switch AI models via dropdown menu

### Council Analysis Process
1. Council members analyze canvas content in 3 stages:
   - Foundation Analysis (Pattern & Witness, Recursive Wisdom)
   - Cross-Pollinated Analysis (Creative Paradox, Sovereign Boundaries)
   - Memory Synthesis (Echo & Memory)
2. Consensus report generated from all member analyses
3. Intelligence Officer report provides system oversight perspective
4. Export complete analysis packages as needed

### Intelligence Officer Functions
- Access via footer chat button
- System health analysis and agent discovery
- Cross-system correlation analysis
- Evidence-based reporting on system state
- Cleanup planning and maintenance recommendations

## 🔧 Configuration & Customization

### Model Assignment

#### Universal Model Selector
Dynamic model selection supporting both local and cloud models:

**Local Models (Traditional Ollama)**
- **Language Models**: llama3.2, gemma3, mistral, codellama, qwen2.5, deepseek
- **Performance Range**: 1B-70B parameters
- **Requirements**: Local Ollama installation
- **Privacy**: Complete local processing

**Cloud Models (Ollama Turbo)**
- **Massive Models**: 480B-671B parameter models
- **Enterprise Performance**: Cloud infrastructure processing
- **No Local Requirements**: Direct cloud access via proxy
- **Auto-Configuration**: Seamless integration with launch scripts

**Specialized Applications**
- **Technical Analysis**: Code generation and debugging
- **Creative Writing**: Advanced language generation
- **Research**: Complex reasoning and analysis
- **Performance Tiers**: From 1B (speed) to 671B (maximum capability)

### System Optimization
- **Caching Configuration**: Adjustable response, context, and synthesis cache durations
- **Polling Intervals**: Activity-based timing from 2 minutes (active) to 10 minutes (idle)
- **Memory Management**: Configurable localStorage limits with automatic cleanup and compression
- **Performance Tuning**: Concurrent request limits and timeout adjustments
- **Validation Controls**: Enable/disable validation layers for different performance profiles

## 🛡️ Security & Privacy

### Local Mode (Maximum Privacy)
- **Complete Local Processing**: All AI operations occur on your machine
- **No Data Transmission**: Zero data leaves your system
- **Network Isolation**: Only localhost connections to Ollama
- **Full Control**: Complete authority over all data and AI interactions

### Turbo Mode (Cloud Processing)
- **Cloud Infrastructure**: Processing on enterprise-grade cloud servers
- **Secure Transmission**: Encrypted communication via HTTPS
- **Enhanced API Key Security**: No hardcoded credentials, environment variable based
- **Dynamic Configuration**: API keys prompted at launch or via setup utility
- **User Choice**: Optional cloud integration - toggle as needed

### Universal Privacy Features
- **Data Control**: Complete authority over data retention and deletion
- **Session Management**: Independent operation with flexible deployment options
- **Browser Security**: Standard web security model with localStorage management
- **Mode Selection**: Choose privacy level based on your needs

## 📖 Documentation & Support

### GitHub Pages Demo
View the interface demonstration at: [https://yufok1.github.io/Canvas-with-observation-feeds-HTML/canvas-with-observation-feeds.html](https://yufok1.github.io/Canvas-with-observation-feeds-HTML/canvas-with-observation-feeds.html)

*Note: Demo is UI-only due to CORS restrictions. Full functionality requires local installation.*

### Troubleshooting Resources
- **Console Debugging**: Browser developer tools provide detailed operation logs
- **Performance Monitoring**: Real-time system metrics and resource usage tracking
- **Error Resolution**: Comprehensive error handling with fallback mechanisms
- **Community Support**: GitHub issues for technical assistance and feature requests

## 🌐 Technical Architecture

### Data Flow Design
```
User Input → Canvas Detection → AI Activation → Parallel Processing →
Response Aggregation → Synthesis Coordination → Council Analysis →
Intelligence Generation → Memory Update → Export Package Creation
```

### AI System Hierarchy
```
Intelligence Officer (Minimized Chat Interface + System Health Monitoring)
├── Agent Discovery System (Data Trail Analysis)
│   ├── Council Agent Detection (Memory & DOM Patterns)
│   ├── Validation Agent Detection (Global Scope Scanning)
│   ├── Canvas Agent Detection (localStorage Patterns)
│   └── System Component Detection (Runtime Signatures)
├── Canvas AI Systems (Real-Time Analysis) - Discovered: 5 agents
│   ├── DJINN (Governance & Strategy)
│   ├── NAZAR (Consciousness & Emotional)
│   ├── NARRA (Pattern Recognition)
│   ├── WHALE (Deep Analysis & Memory)
│   └── WATCHTOWER (Monitoring & Metrics)
├── DJINN Council (Governance Oversight) - Discovered: 5 members
│   ├── Pattern & Witness (Structure Analysis)
│   ├── Recursive Wisdom (Knowledge Synthesis)
│   ├── Creative Paradox (Innovation Catalyst)
│   ├── Sovereign Boundaries (Autonomy Guardian)
│   └── Echo & Memory (Temporal Coordination)
└── Validation Ecosystem (Quality Assurance) - Discovered: 7 agents
    ├── Primary Validator → Refinement Specialist → Recovery Agent
    ├── Pattern Recognition Engine → Efficiency Optimizer
    └── Quality Assurance Monitor → Intelligence Officer (Self-Discovery)
```

## 🎨 Visual & User Experience

### Interface Design
- **Cyberpunk Aesthetics**: Matrix-inspired visual design with professional functionality
- **Real-Time Feedback**: Visual indicators for AI processing states and system health
- **Responsive Layout**: Dynamic scaling and optimization for different screen sizes with CSS Grid
- **Color-Coded Systems**: Distinct visual identity for different AI agents and functions

### Animation & Effects
- **Matrix Rain Background**: Immersive visual experience with performance optimization
- **Synchronized Interactions**: Visual coordination of AI agent communications
- **Status Animations**: Real-time processing indicators and system state visualization
- **Smooth Transitions**: Professional interface transitions and state changes

## 📊 Performance & Metrics

### System Monitoring
- **Real-Time Metrics**: Live performance tracking and resource utilization
- **AI Response Analytics**: Quality assessment and processing time monitoring
- **Memory Usage Tracking**: localStorage optimization and quota management with compression
- **Cross-System Correlation**: Intelligence flow analysis between Canvas and Council

### Optimization Features
- **Intelligent Caching**: Response optimization with configurable cache strategies
- **Parallel Processing**: Concurrent AI operations for improved efficiency
- **Resource Management**: Automatic cleanup and memory optimization
- **Performance Scaling**: Dynamic adjustment based on system capabilities
- **Error Recovery**: Robust error handling with graceful degradation

## 🤝 Contributing & Development

### Development Environment
- **Local Testing**: Use provided batch files for consistent development environment
- **Cross-Browser Compatibility**: Ensure functionality across modern browsers
- **Feature Integration**: Maintain compatibility with existing AI agent architecture
- **Performance Testing**: Monitor resource usage and optimization opportunities

### Code Standards
- **Semantic HTML5**: Proper document structure and accessibility
- **Modular JavaScript**: Separation of concerns and maintainable code architecture
- **CSS Organization**: Consistent styling with responsive design principles using CSS Grid
- **Documentation**: Comprehensive commenting and technical documentation

## 📄 License & Usage

This project is provided for educational and research purposes. Users must ensure compliance with applicable AI usage policies. All AI processing and data storage can occur locally with optional cloud integration.

---

**Canvas AI Orchestration System** - Empowering autonomous intelligence collaboration through event-driven architecture and cross-system correlation analysis.

GitHub Repository: https://github.com/Yufok1/Canvas-with-observation-feeds-HTML

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