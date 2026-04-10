# 🚀 Multi-Region Kubernetes Infrastructure Automation using Terraform on Microsoft Azure

---

## 📌 Project Overview

This project demonstrates a **production-grade DevOps & DevSecOps implementation** using Terraform to provision and manage a **multi-region Azure infrastructure**.

It includes:

* Multi-region deployment (Central India, South India)
* Modular Terraform architecture
* Azure Kubernetes Service (AKS)
* Azure Container Registry (ACR)
* Azure Key Vault
* Azure Traffic Manager
* CI/CD pipeline with DevSecOps & cost estimation

---

## 🏗️ Architecture

* **Regions:** Central India, South India
* **Compute:** AKS (Private Cluster)
* **Networking:** Virtual Network + Subnet
* **Registry:** ACR
* **Secrets:** Key Vault
* **Traffic Routing:** Traffic Manager
* **IaC:** Terraform
* **CI/CD:** Azure DevOps

---

## 📁 Folder Structure

```
.
├── modules/
│   ├── resource_group/
│   ├── network/
│   ├── aks/
│   ├── acr/
│   ├── keyvault/
│   └── traffic-manager/
│
├── environments/
│   ├── dev/
│   └── prod/
│
└── azure-pipelines.yml
```

---

## ⚙️ Key Features

* ✔ Multi-region deployment using `for_each`
* ✔ Modular and reusable Terraform code
* ✔ Environment isolation (dev & prod)
* ✔ Secure secrets management with Key Vault
* ✔ Global routing using Traffic Manager
* ✔ DevSecOps pipeline with security gates
* ✔ Cost visibility using Infracost

---

## 🔐 DevSecOps Integration

This project integrates multiple security tools in CI/CD:

* **GitLeaks** → Detect hardcoded secrets
* **Checkov** → Terraform misconfiguration scanning
* **SonarQube** → Code quality & SAST
* **Trivy** → Vulnerability scanning
* **Infracost** → Cost estimation before deployment

---

## 🔍 Security Strategy

* ✔ Pipeline fails on **HIGH severity issues (Checkov)**
* ✔ Secrets scanning before deployment
* ✔ Terraform validation before apply
* ✔ Modular scan coverage (environments + modules)

---

## 💰 Cost Estimation (Infracost)

Infrastructure cost is evaluated before deployment:

* Prevents unexpected cloud bills
* Helps optimize resource usage
* Provides visibility into Terraform changes

---

## 🔄 CI/CD Pipeline Flow

```
Code Commit
   ↓
Security Stage
   ├── GitLeaks (Secrets Scan)
   ├── Checkov (IaC Security)
   ├── SonarQube (Code Analysis)
   ├── Trivy (Vulnerability Scan)
   └── Infracost (Cost Estimation)
   ↓
DEV Deployment (develop branch)
   ↓
PROD Deployment (main branch)
```

---

## 🌍 Environment Strategy

| Branch  | Environment | Purpose    |
| ------- | ----------- | ---------- |
| develop | dev         | Testing    |
| main    | prod        | Production |

---

## 🚀 Deployment Steps

### 1. Initialize

```
cd environments/dev
terraform init
```

### 2. Validate

```
terraform validate
```

### 3. Plan

```
terraform plan
```

### 4. Apply

```
terraform apply
```

### 5. Destroy

```
terraform destroy
```

---

## ⚠️ Important Considerations

* AKS is deployed as a **private cluster**
* Traffic Manager uses **public endpoints (placeholder)**
* Resource naming follows Azure constraints
* Each region uses **unique resource names**
* Avoid overlapping CIDR ranges for scalability

---

## 🧠 Key Learnings

* Multi-region architecture design
* Terraform modularization
* DevSecOps integration in CI/CD
* Handling Azure constraints (naming, networking)
* Security-first infrastructure deployment

---

## 🚀 Future Enhancements

* AKS Ingress + Public Load Balancer
* Domain integration with Traffic Manager
* Monitoring (Azure Monitor / Prometheus)
* Remote backend with state locking
* Approval gates before production deployment

---

## 👨‍💻 Author

Kashaf Salman Khan

---

## ⭐ Conclusion

This project represents a **real-world DevOps + DevSecOps implementation**, combining:

* Infrastructure as Code (Terraform)
* Cloud (Azure)
* Security (DevSecOps)
* Cost optimization (Infracost)
* Automation (CI/CD)

---
