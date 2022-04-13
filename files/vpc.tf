module "network" {
  source  = "app.terraform.io/bm_mi_lab/network/google"
  version = "3.4.0"
  # insert required variables here

  network_name = "bm_gcp_Net"
  project_id = var.project_id
  subnets = [
  {
    subnet_name   = "bm_gcp_Net-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}