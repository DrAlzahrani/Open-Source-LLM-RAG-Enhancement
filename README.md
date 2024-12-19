# Enhancing Large Language Models (LLMs) Using Retrieval-Augmented Generation (RAG) Lab

## Prerequisites
Before starting, ensure you have the following installed and ready:
1. **Docker**: Download and install Docker from [Docker's official website](https://www.docker.com/).
2. **Groq API Key**: Obtain a Groq API key by logging into the [Groq Console](https://console.groq.com/keys) and generating a new key.

---

## Lab Setup Instructions

### Step 1: Clone the Repository
Clone the GitHub repository to your local machine using the following command:
```bash
git clone https://github.com/DrAlzahrani/Open-Source-LLM-RAG-Enhancement.git
```

### Step 2: Navigate to the Repository

Change directory to the cloned repository:

```bash
cd Open-Source-LLM-RAG-Enhancement
```
### Step 3: Get the latest version of our app by pulling the changes

```bash
git pull origin main
```
### Step 4: Modify Script Permissions

Grant execute permissions to the setup script:

```bash
chmod u+x docker_image_setup.sh
```

### Step 5: Run and Build the Docker Container

Build and run the Docker image using the provided setup script: 

```bash
./docker_image_setup.sh
```

### Step 6: Access Jupyter Notebook

After starting the container, the terminal will display a URL (starting with http://127.0.0.1) that includes a token.

Copy this URL and paste it into your web browser to access the Jupyter Notebook interface.

### Step 7: Execute the Notebook

- In the Jupyter interface:
  - Navigate to `Short_lab.ipynb`.
  - Open the notebook.
  - Run all cells to execute the code.

---
