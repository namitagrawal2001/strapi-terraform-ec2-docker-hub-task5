# 🚀 Day 01 — Strapi Project Setup (PearlThoughts DevOps Internship)

This repository contains my **Day 01 task** for the PearlThoughts DevOps Internship.

The goal of this task was to:

- Install and configure **Strapi v5**
- Create a custom **Content Type**
- Add sample entries
- Run the project locally
- Push the entire setup to GitHub using a dedicated branch
- Prepare for a Pull Request (PR)

---

## 📌 **1. Tech Stack Used**
- **Strapi v5**
- **Node.js**
- **SQLite** (default Strapi database)
- **TypeScript**  
- **npm**

---

## 📌 **2. Project Setup Steps**

### **Step 1 — Create Strapi Project**
```bash
npx create-strapi@latest my-strapi-app --quickstart
```
This command installs Strapi, sets up all dependencies, and starts the local development server.

---

## 📌 **3. Content Type Created**
I created a content type named **DevOpsProject** with the following fields:

| Field Name       | Type                | Description |
|------------------|---------------------|-------------|
| `name`           | Text (Short)        | Project title |
| `description`    | Rich Text (Markdown)| Project description |
| `tool_stack`     | Text (Short)        | Tools used in the project |
| `project_status` | Enumeration         | Values: `planned`, `in-progress`, `completed` |

---

## 📌 **4. Sample Data Added**
Three entries were added to the **DevOpsProject** collection:

1. **CI/CD Pipeline**  
   - Tools: GitHub Actions, Docker, Node.js  
   - Status: completed  

2. **Dockerized Node App**  
   - Tools: Docker, Node.js, AWS  
   - Status: planned  

3. **Terraform AWS Setup**  
   - Tools: Terraform, AWS  
   - Status: in-progress  

---

## 📌 **5. How to Run the Project Locally**

Clone the branch:

```bash
git clone https://github.com/rahman5828/rahman-tasks.git
cd rahman-tasks
git checkout rahman-day01-strapi
```

Install dependencies:

```bash
npm install
```

Start the Strapi server:

```bash
npm run develop
```

Open in browser:

👉 http://localhost:1337/admin

---

## 📌 **6. Branch Workflow Followed**

- Created a dedicated branch:  
  ```
  rahman-day01-strapi
  ```
- Added all project files
- Committed with meaningful messages:
  ```
  feat: Day 01 Strapi setup with content type and sample data
  ```
- Ready to raise a **Pull Request → main**

---

## 📌 **7. Loom Video**
🎥 Loom video demonstrating Strapi setup, content type creation, and sample entries.  
(Will be added after recording)

---

## 📌 **8. Author**
**Abdul Rahman V A**  
PearlThoughts DevOps Intern (2025)

---

## 📌 **9. Notes**
This project will be part of a series of daily tasks during the internship.  
Future tasks will have separate branches like:

```
rahman-day02-<task>
rahman-day03-<task>
...
```

---

