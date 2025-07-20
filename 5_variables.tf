variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "zone" {
  description = "The GCP zone for the cluster"
  type        = string
  default     = "us-central1-a"
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
  default     = "pcidss"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "private"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
  default     = "dev-cluster"
}

variable "pod_range_name" {
  description = "Secondary IP range name for pods"
  type        = string
  default     = "k8s-pod-range"
}

variable "service_range_name" {
  description = "Secondary IP range name for services"
  type        = string
  default     = "k8s-service-range"
}