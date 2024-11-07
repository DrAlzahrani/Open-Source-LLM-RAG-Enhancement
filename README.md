# Steps to Run the Mistral 7B Token Validation and Model Testing

Follow these steps to clone the repository, build the Docker image, and run the container:

---

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
### Step 4: Build the Docker Image

Build the Docker image using the following command:

```bash
docker build -t mistral-token-test .
```

### Step 5: Run the Docker Container

Run the Docker container with the following command:

```bash
docker run --rm mistral-token-test
```

---
