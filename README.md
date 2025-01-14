
# Enhancing Large Language Models (LLMs) Using Retrieval-Augmented Generation (RAG)

---

**💡 Note:**  
If you are new to AI, LLM, or RAG, check out the [**Beginner Guide**](https://github.com/DrAlzahrani/Open-Source-LLM-RAG-Enhancement/wiki) before you start!  

---

## Prerequisites
Before you begin, ensure you have the following:

1. **Docker**: [Install Docker](https://www.docker.com) from its official website.  
2. **Groq API Key**: [Log in to the Groq Console](https://console.groq.com) to generate a new API key.  
3. **Linux/MacOS**: No extra setup needed.  
4. **Windows**: Install [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) and enable Docker's WSL integration by following [this guide](https://docs.docker.com/desktop/windows/wsl/).  

---

## Lab Setup Instructions (see the [Wiki pages](https://github.com/DrAlzahrani/Open-Source-LLM-RAG-Enhancement/wiki) for more details)

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
> **⚠️ Warning**: Ensure port `8888` is free. The script will automatically clean up this port if it's in use by stopping and removing any Docker container using it.

Run the setup script to build and start the Docker container:  
```bash
./docker_image_setup.sh
```

### Step 6: Access the Jupyter Notebook
- Once the container starts, the terminal will display a URL (e.g., `http://127.0.0.1`) with a token.  
- Copy and paste this URL into your browser to access the Jupyter Notebook interface.  

### Step 7: Run the Notebook
1. In Jupyter, navigate to `Long_lab.ipynb` (for beginner users) or `Short_lab.ipynb` (for advanced users).
2. Open the notebook.  
3. Select **Run All Cells** to execute the code.  

---

**💡 Note:**  
If you are new to AI, LLM, or RAG, check out the [**Beginner Guide**](https://github.com/DrAlzahrani/Open-Source-LLM-RAG-Enhancement/wiki) before you start!  

