#!/usr/bin/env python3
"""
Test script to verify Ollama integration works correctly
"""
import ollama

def test_ollama_connection():
    """Test if Ollama is running and accessible"""
    try:
        # Test basic connection
        response = ollama.generate(
            model='gemma3:4b',
            prompt='Hello, respond with just "AI connection successful"',
            options={'num_predict': 10}
        )
        print("✅ Ollama connection successful!")
        print(f"Response: {response['response'].strip()}")
        return True
    except Exception as e:
        print(f"❌ Ollama connection failed: {e}")
        return False

def test_workout_plan_generation():
    """Test workout plan generation with sample data"""
    try:
        sample_prompt = """
Based on the following user information, create a brief workout plan:

Age: 25 years
Health Problems: None
Available Time per Day: 30-45 minutes
Goal: Lose weight

Please create a simple 2-day workout plan that fits these criteria.
        """
        
        response = ollama.generate(
            model='gemma3:4b',
            prompt=sample_prompt,
            options={
                'temperature': 0.7,
                'top_p': 0.9,
                'num_predict': 200
            }
        )
        
        print("✅ Workout plan generation successful!")
        print(f"Sample response (first 200 chars): {response['response'][:200]}...")
        return True
    except Exception as e:
        print(f"❌ Workout plan generation failed: {e}")
        return False

if __name__ == "__main__":
    print("🧪 Testing Ollama Integration for Workout Plan Composer")
    print("=" * 50)
    
    # Test 1: Basic connection
    print("\n1. Testing Ollama connection...")
    connection_ok = test_ollama_connection()
    
    if connection_ok:
        # Test 2: Workout plan generation
        print("\n2. Testing workout plan generation...")  
        workout_ok = test_workout_plan_generation()
        
        if workout_ok:
            print("\n🎉 All tests passed! The application should work correctly.")
        else:
            print("\n⚠️  Basic connection works, but workout generation has issues.")
    else:
        print("\n⚠️  Cannot connect to Ollama. Make sure it's running with 'ollama serve'")
    
    print("\n" + "=" * 50)