
# Enhancing Large Language Models (LLMs) Using Retrieval-Augmented Generation (RAG)

## Prerequisites
Before you begin, ensure you have the following:

1. **Docker**: [Install Docker](https://www.docker.com) from its official website.  
2. **Groq API Key**: [Log in to the Groq Console](https://console.groq.com) to generate a new API key.  
3. **Linux/MacOS**: No extra setup needed.  
4. **Windows**: Install [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) and enable Docker's WSL integration by following [this guide](https://docs.docker.com/desktop/windows/wsl/).  

---

## Lab Setup Instructions

### Step 1: Clone the Repository
Clone the GitHub repository to your local machine:  
```bash
git clone https://github.com/DrAlzahrani/Open-Source-LLM-RAG-Enhancement.git
```

### Step 2: Navigate to the Repository
Change to the cloned repository directory:  
```bash
cd Open-Source-LLM-RAG-Enhancement
```

### Step 3: Pull the Latest Version
Update the repository to the latest version:  
```bash
git pull origin main
```

### Step 4: Modify Script Permissions
Enable execute permissions for the setup script:  
```bash
chmod u+x docker_image_setup.sh
```

### Step 5: Build and Run the Docker Container
Run the setup script to build and start the Docker container:  
```bash
./docker_image_setup.sh
```

### Step 6: Access the Jupyter Notebook
- Once the container starts, the terminal will display a URL (e.g., `http://127.0.0.1`) with a token.  
- Copy and paste this URL into your browser to access the Jupyter Notebook interface.  

### Step 7: Run the Notebook
1. In Jupyter, navigate to `Short_lab.ipynb`.  
2. Open the notebook.  
3. Select **Run All Cells** to execute the code.  
