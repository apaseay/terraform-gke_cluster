# Create GKE Cluster
resource "google_container_cluster" "primary" {
  name     = "dev-cluster"
  location = "us-central1-a"

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = google_compute_network.main.self_link
  subnetwork = google_compute_subnetwork.private.self_link

 # logging_service    = "logging.googleapis.com/kubernetes"        #this comes with payment for logging
 # monitoring_service = "monitoring.googleapis.com/kubernetes"     #can be removed if you want to pay

  networking_mode    = "VPC_NATIVE"
  deletion_protection = false        #put true if you don't want it to be deleted

  # Optional: Enable multi-zonal cluster
  node_locations = [
    "us-central1-b"
  ]

  addons_config {
    http_load_balancing {
      disabled = true
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

release_channel {
  channel = "REGULAR"
}

# Optional: Enable if using Workload Identity (commented out)
# workload_identity_config {
#   workload_pool = "host-project.svc.id.goog"
# }

ip_allocation_policy {
  cluster_secondary_range_name  = "k8s-pod-range"
  services_secondary_range_name = "k8s-service-range"
}

private_cluster_config {
  enable_private_nodes    = true
  enable_private_endpoint = false
  master_ipv4_cidr_block  = "172.16.0.0/28"
}
}

