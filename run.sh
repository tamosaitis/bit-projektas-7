#!/bin/bash

# Workout Plan Composer Run Script
# UAB Sveikata

echo "🏋️‍♂️ Starting Workout Plan Composer - UAB Sveikata"
echo "============================================="

# Check if virtual environment exists
if [ ! -d ".venv" ]; then
    echo "❌ Virtual environment not found. Please run setup.sh first."
    exit 1
fi

# Check if Ollama is running
if ! curl -s http://localhost:11434/api/tags > /dev/null 2>&1; then
    echo "⚠️  Ollama doesn't seem to be running."
    echo "💡 Please start Ollama with: ollama serve"
    echo "💡 Then run this script again."
    echo ""
    echo "Attempting to start Ollama in the background..."
    ollama serve &
    sleep 3
    
    if ! curl -s http://localhost:11434/api/tags > /dev/null 2>&1; then
        echo "❌ Failed to start Ollama. Please start it manually with 'ollama serve'"
        exit 1
    fi
fi

echo "✅ Ollama is running"

# Activate virtual environment and start Streamlit
echo "🚀 Starting Streamlit application..."
echo ""
source .venv/bin/activate
echo "Opening browser at: http://localhost:8501"
echo "Press Ctrl+C to stop the application"
echo ""

streamlit run app.py