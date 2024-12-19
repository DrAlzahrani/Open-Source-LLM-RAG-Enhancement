# Use an official Python base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install required Python dependencies
RUN pip install --upgrade pip && \
    pip install \
    jupyter \
    ipykernel \
    httpx \
    pymilvus \
    python-dotenv \
    langchain \
    langchain-core \
    langchain-milvus \
    langchain-groq \
    langchain-community \
    beautifulsoup4 \
    langchain-text-splitters \
    langchain-huggingface \
    sentence-transformers

# Copy the Jupyter notebooks into the container
COPY Long_lab.ipynb /app/
COPY Short_lab.ipynb /app/

# Expose Jupyter Notebook port
EXPOSE 8888

# Command to run Jupyter Notebook with reduced verbosity
CMD ["python", "-m", "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--log-level=CRITICAL"]
