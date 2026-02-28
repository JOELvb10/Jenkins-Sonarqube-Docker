<div align="center">
  <h1>🛡️ End-to-End Distributed DevSecOps Pipeline</h1>
  
  ![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=Jenkins&logoColor=white)
  ![SonarQube](https://img.shields.io/badge/SonarQube-4E9BCD?style=for-the-badge&logo=sonarqube&logoColor=white)
  ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
  ![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
  
  <p><i>Automated CI/CD with Quality Gates on a Distributed AWS Architecture</i></p>
</div>
An automated CI/CD pipeline architected across a distributed AWS environment to ensure high-quality, secure, and containerized application delivery.

🏗️ Architecture Overview
Insert your Canva Diagram here

Note: This project is deployed across 3 separate AWS EC2 instances to simulate a real-world production environment (Jenkins Master, SonarQube Server, and Production Docker Node).

🛠️ Tech Stack
Orchestration: Jenkins (Pipeline-as-Code)

Code Quality: SonarQube (Static Analysis & Quality Gates)

Containerization: Docker, Docker Hub

Cloud: AWS (EC2, Security Groups, IAM)

Source: GitHub (Webhooks for Automation)

🚀 Key Features
Zero-Touch Automation: Triggered by GitHub Webhooks upon code push.

Security Scanning: Integrated SonarQube Quality Gates to prevent buggy code from reaching production.

Distributed Workflow: Cross-server communication via SSH and TCP/IP.

Containerized Deployment: Applications are versioned and deployed as Docker containers for environment consistency.

🛤️ Pipeline Stages
Code Checkout: Pulls latest code from GitHub.

SonarQube Analysis: Scans for "Code Smells" and vulnerabilities.

Docker Build: Creates a Docker Image from the Dockerfile.

Image Push: Tags and pushes the image to Docker Hub.

Remote Deployment: Jenkins SSHes into the Production EC2 to pull and run the container.

🔧 Setup & Configuration
1. EC2 Instance Details
Instance 1 (Jenkins): Port 8080

Instance 2 (SonarQube): Port 9000

Instance 3 (Production): Port 80/8080 (Docker)

2. Environment Variables
To run this pipeline, the following credentials must be configured in Jenkins:

DOCKER_HUB_CREDENTIALS

SONAR_TOKEN

SSH_PRIVATE_KEY (for EC2 Production access)

💡 Lessons Learned
Configuring distributed networking between multiple AWS Security Groups.

Managing SSH authentication for secure remote automation.

The importance of Quality Gates in a DevSecOps lifecycle.
