# Terraform AWS Infrastructure with Jenkins CI/CD

This project demonstrates the use of a **Multibranch Pipeline in Jenkins** to automatically deploy AWS infrastructure using **Terraform**. It contains Terraform configuration for launching an **EC2 instance** and creating an **S3 bucket**.

---

## 📁 Project Structure

terraform-aws/
├── main.tf # EC2 and S3 resource definitions
├── variables.tf # Input variables
├── outputs.tf # Output values
Jenkinsfile # CI/CD pipeline definition for Jenkins


---

## 📌 Requirements

- Public GitHub repository with two branches:
  - `main`
  - `dev`
- Jenkins server with multibranch pipeline support
- AWS CLI configured on Jenkins or EC2 agent
- Terraform installed on Jenkins or agent machine

---

## 🔧 Terraform Resources

The following AWS resources are created:
- 🖥️ **EC2 Instance** (t2.micro, with a key pair)
- 🪣 **S3 Bucket** (unique bucket name)

---

## 🔄 Jenkinsfile Pipeline

The pipeline performs:

1. **Terraform Init** – Initializes the Terraform project
2. **Terraform Validate** – Validates Terraform configuration files

You can expand it to support:
- `terraform plan`
- `terraform apply` with manual approval
- Notifications (Slack, email, etc.)

---

## 🚀 How to Deploy

1. Clone the repo:
   ```bash
   git clone https://github.com/sagarmalasiii/sagar-malasi.git
   cd sagar-malasi
terraform init
terraform apply -var="bucket_name=bucket-name" 
