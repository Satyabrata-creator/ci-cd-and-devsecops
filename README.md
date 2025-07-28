# 🚀 Streamlined DevSecOps Pipeline: Terraform, GitHub Actions & Kubernetes Sealed Secrets 🔒

This repository offers an end-to-end, automated solution for modern cloud-native application delivery. It masterfully combines *Infrastructure as Code (Terraform), robust **CI/CD automation (leveraging GitHub Actions alongside AWS CodePipeline), proactive **container security (Trivy), and secure **secret handling (Sealed Secrets)* to forge a truly comprehensive *DevSecOps* journey.

---

## 🗺 Architectural Overview:

<img width="3508" height="2481" alt="devsecops-architecture" src="https://github.com/user-attachments/assets/abb26708-ae20-4c23-9641-1c6c73964fb4" />

---

## 🗂 Repository Layout:

<img width="791" height="497" alt="image" src="https://github.com/user-attachments/assets/9a7f6731-0d13-4d06-8728-9eac87a9d1a2" />

---

## 🛠 Core Technologies Employed:

- *Infrastructure Management*: Terraform, AWS Services (EC2, S3, IAM, CodePipeline, CodeBuild, CodeStar, EKS)
- *Continuous Integration/Delivery*: GitHub Actions, AWS CodePipeline, AWS CodeBuild
- *Application Stack*: Vite + React, Docker, NGINX
- *Security Posture*: tfsec (IaC security scanning), Trivy (container vulnerability scanning), Sealed Secrets
- *Container Orchestration*: Kubernetes (on EKS)

---

## 💡 Operational Flow:

### ➡ Automated CI/CD with GitHub Actions
- Each push event initiates a GitHub Actions workflow that orchestrates:
  - Automated Terraform infrastructure provisioning.
  - Comprehensive security scans (tfsec for IaC, Trivy for Docker images).
  - Docker image build and deployment processes.
  - Targeted deployments to either Kubernetes or EC2 environments.

### 🏗 Infrastructure Defined by Code (Terraform)
- All foundational AWS infrastructure components are meticulously defined as code within the terraform/ directory.
- tfsec is integrated to rigorously validate security best practices prior to any infrastructure deployment.

### 📦 Secure Docker Image Management
- Application containers are constructed using Docker.
- Trivy performs essential vulnerability scans on these containers before they are pushed to a container registry (e.g., DockerHub), ensuring a secure baseline.

### 🔒 Robust Secret Protection
- Kubernetes secrets are handled with utmost care, encrypted using *Sealed Secrets*.
- This enables the safe and secure commitment of sealed secret files directly into version control.

### 🚀 Flexible Deployment Strategies
- *EC2 Deployments*: Direct application deployment facilitated via NGINX and user_data scripts.
- *EKS Deployments*: Kubernetes manifests provide complete management for pods and services within the EKS cluster.
- *S3 Artifact Storage*: Build artifacts are systematically stored in an S3 bucket, ensuring traceability and reproducible deployments.

---

## ▶ Getting Started Guide:

### 1️⃣ Obtain the Repository
```bash
git clone [https://github.com/Satyabrata-creator/ci-cd-and-devsecops.git](https://github.com/Satyabrata-creator/ci-cd-and-devsecops.git)
cd ci-cd-and-devsecops


### 2️⃣ Configure AWS & GitHub Secrets
Run:
```bash
aws configure
```
Add the following secrets to your GitHub repo:

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- EC2_SSH_KEY (base64 PEM)
- KUBECONFIG (base64 encoded)
- EC2_HOST(public ip)
- DOCKERPASSWORD
- DOCKERUSERNAME
- AWS_REGION
- S3_BUCKET

### 3️⃣ Initialize and Apply Terraform

- Run Terraform commands locally or via GitHub Actions:
    ```bash
    terraform init
    terraform validate
    terraform plan
    terraform apply
    ```

### 4️⃣ GitHub Workflows

Edit .github/workflows/ci-cd.yml for:

- Build, test, deploy stages
- Triggering Terraform
- Security scan using tfsec & Trivy
- Sealed secrets management
- Deploying using EC2

### 5️⃣ Docker Image Build & Scan

- Ensure `Trivy` is configured in the workflows for Docker image scanning.
    ```bash
    docker build -t your-image .
    trivy image your-image

    ```

### 6️⃣ Encrypt and Apply Sealed Secrets

- Encrypt secrets using Sealed Secrets and apply them to your Kubernetes cluster:
    ```bash
    kubeseal < secret.yaml > sealed-secret.yaml
    kubectl apply -f sealed-secret.yaml

    ```

### 7️⃣ Deploy Application

- Deploy using the automated pipelines (Kubernetes or EC2).
- Artifacts are managed and stored via AWS S3.

### 8️⃣ Monitor Pipelines

- Monitor pipeline runs and security reports in GitHub Actions and AWS CodePipeline.
- Update IaC and pipeline scripts as your infrastructure or application evolves.

---

## 🤝 Contribution

Contributions are welcome! Please fork the repo, create a new branch, and submit a pull request.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---


**✅ Secure. Automate. Deploy.**
## 👨‍💻 Created by Satyabrata Mohapatra
