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

resource "google_compute_instance" "sample-inst" {
  project = "devops-automation-433111"
  name         = "sample-inst"
  machine_type = "e2-medium"
  zone         = "us-west1a"
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
