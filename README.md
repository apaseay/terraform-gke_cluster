# terraform-gke_cluster

This project provisions a **private GKE cluster** in **Google Cloud Platform (GCP)** using **Terraform**, and configures a secure VPC with Cloud NAT, firewall, subnetting, and IP alias ranges.

---

## 📌 Architecture Overview

![GCP Architecture](images/gcp-architecture.png)

---

## ⚙️ Project Details

- **Organization:** apasecloud.online  
- **Project:** sandbox  
- **VPC Name:** `pcidss`  
- **Subnet:** Private  
- **GKE Cluster:** Private control plane + node pool  
- **Networking Mode:** VPC_NATIVE  
- **Outbound Access:** Enabled via Cloud NAT  
- **Inbound SSH/Traffic:** Controlled via firewall rules  
- **Pod & Service Ranges:** Secondary IP ranges configured  
- **Logging & Monitoring:** Optional (disabled for cost control)