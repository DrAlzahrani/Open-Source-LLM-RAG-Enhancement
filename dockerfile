# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy Python script into the container
COPY test_token.py .

# Set the command to run the Python script
CMD ["python", "test_token.py"]

