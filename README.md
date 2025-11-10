# 💪 Workout Plan Composer - UAB Sveikata

A personalized AI-powered workout plan generator that creates customized 7-day fitness routines based on individual user profiles. Built with Streamlit and powered by Ollama's local AI models.

## 🌟 Features

- **Personalized Workout Plans**: Generate customized 7-day workout routines based on user's age, health conditions, available time, and fitness goals
- **AI-Powered**: Uses Ollama's local AI models (gemma2:2b recommended) for intelligent workout plan generation
- **User-Friendly Interface**: Clean, intuitive Streamlit web interface with guided questionnaire
- **Health-Conscious**: Takes into account user's health problems and limitations
- **Flexible Time Management**: Adapts to user's available workout time (15 minutes to 90+ minutes daily)
- **Goal-Oriented**: Supports both weight loss and muscle gain objectives
- **Local AI Processing**: Works entirely with local Ollama models - no external API calls required
- **Export Functionality**: Download generated workout plans as text files

## 🏢 About UAB Sveikata

This application is developed by UAB Sveikata, focusing on personalized health and fitness solutions powered by artificial intelligence.

## 🚀 Quick Start

### Prerequisites

1. **Python 3.8+** installed on your system
2. **Ollama** installed and running locally
3. **gemma2:2b** model (or any other supported model) pulled in Ollama

### Installation

1. **Clone or download this repository**
   ```bash
   git clone <repository-url>
   cd bit-projektas-7
   ```

2. **Install Python dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Install and set up Ollama**
   
   **On macOS:**
   ```bash
   # Install Ollama
   curl -fsSL https://ollama.ai/install.sh | sh
   
   # Start Ollama service
   ollama serve
   ```
   
   **On Windows/Linux:**
   - Download from https://ollama.ai/download
   - Follow installation instructions for your platform

4. **Pull the required AI model**
   ```bash
   # Pull the recommended model (2GB)
   ollama pull gemma2:2b
   
   # Or pull other lightweight models
   ollama pull llama3.2:1b    # 1.3GB
   ollama pull phi3:mini      # 2.3GB
   ollama pull qwen2:0.5b     # 400MB
   ```

5. **Run the application**
   ```bash
   streamlit run app.py
   ```

6. **Access the application**
   - Open your browser and go to `http://localhost:8501`
   - The application will automatically open in your default browser

## 📖 How to Use

### Step 1: Access the Application
Open your web browser and navigate to the application URL. You'll see the UAB Sveikata Workout Plan Composer interface.

### Step 2: Configuration (Sidebar)
- **API Key**: Optional field - leave empty when using local Ollama
- **Model Selection**: Choose from available free AI models (gemma2:2b recommended)

### Step 3: Complete the Questionnaire
Answer the 4 required questions:

1. **Age**: Enter your age in years (16-80)
   - *Example: 25*

2. **Health Problems**: Describe any health conditions or limitations
   - *Examples: "Lower back pain", "Knee injury", "High blood pressure", or "None"*

3. **Available Time**: Select daily workout duration
   - *Options: 15-30 min, 30-45 min, 45-60 min, 60-90 min, 90+ min*

4. **Fitness Goal**: Choose your primary objective
   - *Options: "Lose weight" or "Gain muscle"*

### Step 4: Generate Your Plan
Click "🚀 Generate My Workout Plan" to create your personalized 7-day workout routine.

### Step 5: Review and Download
- Review your customized workout plan
- Download it as a text file for offline access
- Create a new plan anytime with different parameters

## 🤖 AI Models Supported

The application supports several lightweight, free AI models through Ollama:

| Model | Size | Description |
|-------|------|-------------|
| **gemma2:2b** | ~2GB | **Recommended** - Best balance of performance and speed |
| llama3.2:1b | ~1.3GB | Faster, good for quick generations |
| llama3.2:3b | ~3GB | Higher quality responses |
| phi3:mini | ~2.3GB | Microsoft's efficient model |
| qwen2:0.5b | ~400MB | Ultra-lightweight option |
| qwen2:1.5b | ~1.5GB | Good performance, moderate size |

## 🛠️ Technical Details

### Architecture
- **Frontend**: Streamlit web application
- **AI Engine**: Ollama with local language models
- **Processing**: Local CPU/GPU (no external API calls)
- **Data Storage**: Session-based (no persistent storage)

### Key Components
- `app.py`: Main Streamlit application
- `requirements.txt`: Python dependencies
- User questionnaire with validation
- AI prompt engineering for workout generation
- Session state management
- Export functionality

### Security & Privacy
- ✅ **Local Processing**: All AI processing happens locally
- ✅ **No Data Collection**: User data is not stored or transmitted
- ✅ **Privacy First**: No external API calls for AI processing
- ✅ **Session Only**: Data exists only during the session

## 🔧 Troubleshooting

### Common Issues

**1. "Error generating workout plan"**
- Ensure Ollama is running: `ollama serve`
- Check if the model is installed: `ollama list`
- Pull the model if missing: `ollama pull gemma2:2b`

**2. "Import 'streamlit' could not be resolved"**
- Install requirements: `pip install -r requirements.txt`
- Ensure you're in the correct Python environment

**3. Application won't start**
- Check Python version (3.8+ required)
- Verify all dependencies are installed
- Try running: `python -m streamlit run app.py`

**4. Slow response times**
- Use lighter models (qwen2:0.5b, llama3.2:1b)
- Close other resource-intensive applications
- Consider using CPU optimization flags

### Performance Optimization

**For faster responses:**
```bash
# Use lighter models
ollama pull qwen2:0.5b    # Fastest
ollama pull llama3.2:1b   # Good balance
```

**For better quality:**
```bash
# Use larger models (if you have resources)
ollama pull llama3.2:3b
ollama pull gemma2:9b
```

## 📋 System Requirements

### Minimum Requirements
- **OS**: Windows 10+, macOS 10.15+, or Linux
- **RAM**: 4GB (8GB+ recommended)
- **Storage**: 2GB free space for models
- **Python**: 3.8 or higher
- **Internet**: Only for initial setup and model downloads

### Recommended Specifications
- **RAM**: 8GB+ for optimal performance
- **Storage**: 5GB+ for multiple models
- **CPU**: Multi-core processor for faster AI inference
- **GPU**: Optional - Ollama can utilize GPU acceleration if available

## 🤝 Contributing

We welcome contributions to improve the Workout Plan Composer! Here's how you can help:

1. **Report Issues**: Found a bug? Open an issue with details
2. **Suggest Features**: Have ideas for new features? Let us know!
3. **Improve Documentation**: Help us make the docs better
4. **Code Contributions**: Submit pull requests with improvements

## 📄 License

This project is developed by UAB Sveikata. Please respect the intellectual property and use responsibly.

## ⚠️ Disclaimer

**Important**: This program is created with AI and is not a professional doctor's opinion. The workout plans generated are for informational purposes only. Always consult with healthcare providers, fitness professionals, or your doctor before starting any new exercise program, especially if you have pre-existing health conditions.

## 🆘 Support

If you encounter any issues or need help:

1. Check the troubleshooting section above
2. Ensure Ollama is properly installed and running
3. Verify your Python environment and dependencies
4. Check that the required AI model is downloaded

## 🔄 Version History

- **v1.0**: Initial release with basic workout plan generation
- Features: 4-question questionnaire, AI-powered plan generation, multiple model support

---

**Made with ❤️ by UAB Sveikata** | Powered by Ollama & Streamlit