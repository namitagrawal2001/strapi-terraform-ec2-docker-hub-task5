🚀 Strapi Deployment on EC2 using Terraform & Docker

Name: Namit Agrawal

📌 Project Overview

This project demonstrates how to deploy a Strapi application on AWS EC2 using Terraform and Docker.
The entire infrastructure and deployment process is automated using Terraform.

The Docker image is built locally and pushed to Docker Hub.
EC2 instance automatically installs Docker, pulls the image, and runs the Strapi container.

🛠 Tech Stack

Strapi (Node.js CMS)

Docker

Docker Hub

Terraform

AWS EC2

⚙️ What This Project Does

✔ Containerizes the Strapi app using Docker
✔ Pushes Docker image to Docker Hub
✔ Launches EC2 instance using Terraform
✔ Installs Docker on EC2 using user_data
✔ Pulls Docker image automatically
✔ Runs Strapi container on port 1337

🐳 Docker Image

Docker Hub Repository:
https://hub.docker.com/r/namitagrawal/strapi-app

📂 Project Structure
strapi-app/
    └── Dockerfile
terraform/
    ├── main.tf
    ├── provider.tf
    ├── variables.tf
    ├── outputs.tf
    └── user_data.sh

🚀 Deployment Steps

Build Docker image

Push image to Docker Hub

Run terraform init

Run terraform apply

EC2 launches automatically

Docker installs automatically

Strapi container runs automatically

📸 Screenshots

(Add your screenshots here)

🎥 Loom Explanation Video

https://drive.google.com/file/d/1KT2UKHRpQ4otVoBgwgnv4PjGU51Kpj0b/view?usp=sharing

🔗 GitHub Repository

Personal Repo:
https://github.com/namitagrawal2001/strapi-terraform-ec2-docker-hub-task5

Company PR:
https://github.com/PearlThoughtsInternship/Code-Deployers/pull/22
