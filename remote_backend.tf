terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bm_mi_lab"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
