resource "google_storage_bucket" "my-bucket" {
  name          = "first-bucket01-using-tf"
  project = "devops-automation-433111"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
