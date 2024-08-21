resource "google_storage_bucket" "my-bucket" {
  name          = "first-bucket01-using-tf"
  project = "devops-automation-433111"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "my-bucket2" {
  name          = "first-bucket02-using-tf"
  project = "devops-automation-433111"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "my-bucket3" {
  name          = "first-bucket03-using-tf"
  project = "devops-automation-433111"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}

provider "google" {
  project     = "devops-automation-433111"
  region      = "us-west1"
}

resource "google_compute_instance" "instance1" {
  name         = "my-inst-1"
  machine_type = "e2-medium"
  zone         = "us-west1-b"

  tags = ["abc", "def"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
}
}
