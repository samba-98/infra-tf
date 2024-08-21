resource "google_storage_bucket" "my-bucket" {
  name          = "first-bucket"
  project = "devops-automation-433111"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
