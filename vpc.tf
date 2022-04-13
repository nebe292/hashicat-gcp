module "network" {
  source  = "app.terraform.io/bm_mi_lab/network/google"
  version = "3.4.0"
  # insert required variables here
  network_name = "bm-net"
  project_id = "var.project"
  subnets = [
  {
    subnet_name   = "bm-net-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}