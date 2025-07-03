terraform {
  backend "gcs" {
    bucket = "demo-course-tf"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source           = "github.com/tooggi/tf-google-gke-cluster"
  GOOGLE_REGION    = var.GOOGLE_REGION
  GOOGLE_PROJECT   = var.GOOGLE_PROJECT
  GKE_NUM_NODES    = var.GKE_NUM_NODES
  GKE_MACHINE_TYPE = var.GKE_MACHINE_TYPE
}


