# Task 5 - Deploy Strapi on EC2 using Terraform and Docker

## 📌 Project Objective

The goal of this task was to containerize a Strapi application and deploy it on an AWS EC2 instance using Terraform. The deployment process is fully automated using Infrastructure as Code.

---

## 🔧 Work Done in This Project

### 1️⃣ Strapi Setup
- Created a Strapi application
- Configured SQLite as default database
- Built admin panel using production build

---

### 2️⃣ Docker Implementation
- Created Dockerfile for Strapi
- Used Node 20 Alpine image
- Installed dependencies
- Ran `npm run build` for admin panel
- Exposed port 1337
- Configured HOST=0.0.0.0
- Pushed image to Docker Hub

Docker Image:
namitagrawal/strapi-app:latest


---

### 3️⃣ Terraform Configuration
- Created provider configuration
- Defined EC2 instance resource
- Configured Security Group:
  - Port 22 (SSH)
  - Port 1337 (Strapi)
- Used Ubuntu AMI
- Attached Key Pair
- Automated Docker installation using user_data.sh
- Pulled Docker image from Docker Hub inside EC2
- Automatically started Strapi container

---

## 📂 Project Structure

strapi-app/ → Strapi application with Dockerfile
terraform/ → Terraform files (ec2.tf, provider.tf, variables.tf, user_data.sh)


---

## 🚀 Deployment Steps

1. Build Docker image
2. Push image to Docker Hub
3. Run `terraform init`
4. Run `terraform apply`
5. Access Strapi via:

http://_3.6.40.114:1337/admin


---

## 🛠 Technologies Used

- Docker
- Docker Hub
- Terraform
- AWS EC2
- Ubuntu
- Linux

---

## 💻 Author

Namit Agrawal

