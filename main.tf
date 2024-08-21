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



