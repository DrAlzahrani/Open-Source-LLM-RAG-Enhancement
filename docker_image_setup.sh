#!/bin/bash

# Function to check if Docker is installed
check_docker_installed() {
    if ! command -v docker &> /dev/null
    then
        echo "Docker is not installed. Please install Docker first."
        exit 1
    fi
}

# Function to check if Docker service is running (MacOS-specific)
check_docker_running() {
    if ! docker info &> /dev/null
    then
        echo "Docker service is not running or accessible. Please ensure Docker Desktop is running."
        exit 1
    else
        echo "Docker service is running."
    fi
}

# Function to find and remove Docker containers using port 8888
remove_containers_on_port() {
    echo "Checking for Docker containers using port 8888..."
    local containers=$(docker ps --filter "publish=8888" --format "{{.ID}}")

    if [ -n "$containers" ]; then
        echo "The following containers are using port 8888:"
        docker ps --filter "publish=8888"
        echo "Stopping and removing these containers..."
        for container in $containers; do
            docker stop $container
            docker rm $container
            echo "Container $container has been stopped and removed."
        done
    else
        echo "No containers are using port 8888."
    fi
}

# Function to build and run the Docker image
build_and_run_docker() {
    echo "Building the Docker image..."
    docker build -t rag_jupyter .
    if [ $? -ne 0 ]; then
        echo "Failed to build the Docker image. Please check your Dockerfile."
        exit 1
    fi

    echo "Running the Docker container on port 8888..."
    docker run -p 8888:8888 -it rag_jupyter
    if [ $? -ne 0 ]; then
        echo "Failed to run the Docker container. Please check for issues."
        exit 1
    fi
}

# Main script execution
check_docker_installed
check_docker_running
remove_containers_on_port
build_and_run_docker

echo "Docker container is running on port 8888."
