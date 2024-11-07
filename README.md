# Steps to Run the Mistral 7B Token Validation and Model Testing

Follow these steps to clone the repository, build the Docker image, and run the container:

---

### 1. Clone the Repository
Clone this repository and navigate to the project directory:

```bash
git clone <your-repo-url>
cd <your-repo-directory>


2. Rebuild the Docker Image
Rebuild the Docker image to apply any changes:

bash
Copy code
docker build -t mistral-token-test .


3. Run the Docker Container
Run the container to validate the token and test the model:

bash
Copy code
docker run --rm mistral-token-test
