# 🚀 Canvas Launch Scripts

## Overview
This project includes two comprehensive Windows batch scripts for launching the Canvas with Live AI Observation Feeds system with different configurations:

- **`launch-canvas.bat`**: Single canvas interface on port 8000
- **`LAUNCH_CANVAS_SURVEILLANCE.bat`**: Dual-interface surveillance system on port 8080

## Launch Options

### Option 1: Canvas Only (`launch-canvas.bat`)
**Port**: 8000  
**Interface**: Single canvas workspace  
**Purpose**: Primary AI orchestration workspace

### Option 2: Full Surveillance System (`LAUNCH_CANVAS_SURVEILLANCE.bat`)
**Port**: 8080  
**Interface**: Dual interface system  
**Purpose**: Complete monitoring and governance system
- Launches both canvas and DJINN Council simultaneously
- Enables cross-window surveillance and communication
- Provides full governance oversight capabilities

## Features (Both Scripts)
- 🎨 **Clean Interface**: Professional design showcasing the AI orchestration matrix
- 🤖 **System Architecture Display**: Detailed information about all AI systems and their roles
- 🧞‍♂️ **Enhanced DJINN Council Access**: Direct launch to advanced governance surveillance interface with complete memory access, anti-hallucination safeguards, and comprehensive localStorage analysis
- ⚡ **Automated Setup**: One-click server startup and browser launch
- 📋 **Status Monitoring**: Real-time initialization progress
- 🛡️ **Requirements Check**: Clear system requirements display
- 🧠 **Complete Memory Integration**: Council members access all stored AI memories, conversation histories, and cross-member insights
- 🔧 **Recent Fixes**: Includes latest bug fixes and performance improvements (September 15, 2025)

## Usage

### Single Canvas Launch
```batch
# Launch just the canvas interface:
launch-canvas.bat
```

### Full Surveillance Launch
```batch
# Launch both interfaces with surveillance:
LAUNCH_CANVAS_SURVEILLANCE.bat
```

## What Each Script Does

### launch-canvas.bat
1. **Displays System Emblem**: Shows the CANVAS branding and AI orchestration matrix
2. **Lists AI Systems**: Details all 5 DJINN Council members and their specialized analytical functions
3. **Shows Architecture**: Displays system components and capabilities
4. **Starts HTTP Server**: Launches Python HTTP server on port **8000**
5. **Opens Browser**: Automatically navigates to `http://localhost:8000/canvas-with-observation-feeds.html`
6. **Provides Status**: Shows initialization progress and next steps

### LAUNCH_CANVAS_SURVEILLANCE.bat
1. **Checks Python Installation**: Validates Python is available
2. **Kills Conflicting Processes**: Clears any existing server on port 8080
3. **Starts HTTP Server**: Launches Python HTTP server on port **8080**
4. **Opens Canvas Interface**: Launches `http://localhost:8080/canvas-with-observation-feeds.html`
5. **Opens Enhanced DJINN Council**: Launches `http://localhost:8080/djinn-council-shadow-governance.html` with complete memory access, anti-hallucination architecture, and full-panel intelligence display
6. **Maintains Server**: Keeps server running until manually stopped
7. **Cleanup**: Properly terminates server on exit

## Requirements
- Windows OS
- Python installed and in PATH
- Modern terminal
- Ollama running (for AI functionality)
- **Recent Updates**: Improved error handling and performance optimizations (September 15, 2025)

## System Compatibility
- **Operating System**: Windows 10/11
- **Python Version**: 3.7+ (automatically detected)
- **Browser**: Chrome 90+, Firefox 88+, Edge 90+
- **RAM**: 4GB minimum, 8GB recommended for optimal performance
- **Storage**: 2GB free space for Ollama models
- **Network**: Local Ollama connection (localhost:11434)

## Quick Start
Choose your preferred launch method:

**For canvas workspace only:**
```batch
launch-canvas.bat
```

**For complete surveillance system:**
```batch
LAUNCH_CANVAS_SURVEILLANCE.bat
```

Both scripts provide a cinematic launch experience worthy of the AI orchestration system!