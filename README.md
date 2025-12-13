
---

## Pipeline overview

1. Code is pushed to the `main` branch  
2. GitHub Actions runs:
   - Code linting
   - Automated tests
3. If checks pass:
   - A Docker image is built
   - The image is tagged (`latest` and commit SHA)
   - The image is pushed to Docker Hub
4. AWS Elastic Beanstalk pulls the latest image and deploys it

---

## Technologies used

- CI/CD: GitHub Actions  
- Containerization: Docker  
- Registry: Docker Hub  
- Cloud: AWS Elastic Beanstalk  
- Backend: Python, Flask  
- Version control: Git, GitHub  

---

## Deployment model

The application is deployed using a `Dockerrun.aws.json` (v1) definition.

Elastic Beanstalk does not build the image itself.  
It pulls a pre-built image from Docker Hub, ensuring a clean separation between:

- Build phase (CI)
- Run phase (CD)

---

## Challenges & lessons learned

- Debugging Elastic Beanstalk deployment failures using platform logs  
- Fixing JSON parsing and configuration issues in `Dockerrun.aws.json`  
- Ensuring Flask listens on the correct host and port inside the container  
- Understanding how AWS health checks interact with containerized apps  

This project reinforced the importance of logs, observability, and small configuration details in production deployments.

---

## Access

The application is deployed on AWS Elastic Beanstalk.  
The root endpoint serves a simple page explaining CI/CD concepts.

---

## Why this project

This project was built to:
- Practice real CI/CD workflows
- Understand container-based deployments on AWS
- Gain hands-on experience debugging production issues
- Demonstrate DevOps fundamentals in a concrete, reproducible way


