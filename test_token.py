from transformers import AutoTokenizer, AutoModelForCausalLM
from huggingface_hub import login
import os

# Token for authentication
hf_token = "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"

def validate_token():
    """Authenticate with Hugging Face."""
    try:
        print("Authenticating with Hugging Face...")
        login(token=hf_token)
        print("Authentication successful!")
    except Exception as e:
        print(f"Authentication failed: {e}")
        return False
    return True

def load_mistral_model():
    """Load the Mistral 7B v0.1 model."""
    try:
        print("Loading Mistral 7B v0.1 model and tokenizer...")
        model_name = "mistralai/Mistral-7B-v0.1"
        tokenizer = AutoTokenizer.from_pretrained(model_name, token=hf_token)
        model = AutoModelForCausalLM.from_pretrained(model_name, token=hf_token)
        print("Model and tokenizer loaded successfully!")
        return tokenizer, model
    except Exception as e:
        print(f"Failed to load model: {e}")
        return None, None

def run_test(tokenizer, model):
    """Run a test inference."""
    try:
        print("Running inference test...")
        input_text = "Once upon a time,"
        inputs = tokenizer(input_text, return_tensors="pt")
        outputs = model.generate(inputs["input_ids"], max_new_tokens=50)
        result = tokenizer.decode(outputs[0], skip_special_tokens=True)
        print(f"Test output: {result}")
    except Exception as e:
        print(f"Test failed: {e}")

if __name__ == "__main__":
    if validate_token():
        tokenizer, model = load_mistral_model()
        if tokenizer and model:
            run_test(tokenizer, model)
        else:
            print("Failed to load model and tokenizer. Exiting...")
    else:
        print("Invalid token. Exiting...")

