#!/bin/bash

# Workout Plan Composer Setup Script
# UAB Sveikata

echo "🏋️‍♂️ Setting up Workout Plan Composer - UAB Sveikata"
echo "==============================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8+ first."
    exit 1
fi

echo "✅ Python found: $(python3 --version)"

# Check if Ollama is installed
if ! command -v ollama &> /dev/null; then
    echo "❌ Ollama is not installed."
    echo "💡 Please install Ollama from: https://ollama.ai/download"
    echo "💡 Then run: ollama pull gemma3:4b"
    exit 1
fi

echo "✅ Ollama found: $(ollama --version | head -n 1)"

# Check if required model is available
if ! ollama list | grep -q "gemma3:4b"; then
    echo "⚠️  gemma3:4b model not found. Attempting to pull..."
    ollama pull gemma3:4b
    if [ $? -ne 0 ]; then
        echo "❌ Failed to pull gemma3:4b model"
        exit 1
    fi
else
    echo "✅ gemma3:4b model is available"
fi

# Create virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
    echo "📦 Creating virtual environment..."
    python3 -m venv .venv
fi

# Activate virtual environment and install dependencies
echo "📦 Installing dependencies..."
source .venv/bin/activate
pip install -r requirements.txt

echo ""
echo "🎉 Setup complete!"
echo ""
echo "To run the application:"
echo "1. Make sure Ollama is running: ollama serve"
echo "2. Start the app: ./run.sh"
echo "   Or manually: source .venv/bin/activate && streamlit run app.py"
echo ""
echo "The application will open at: http://localhost:8501"
echo ""