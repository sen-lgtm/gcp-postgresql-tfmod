provider "google" {
  # Project can be set with the environment variable GOOGLE_PROJECT
  # Region can be set with the environment variable GOOGLE_REGION
}

module "cloud_postgresql" {
  source        = "./.."
  instance_name = "paradis"
  instance_databases = [
    "maria",
    "rose",
    "sheena,"
  ]
  instance_users = [
    "armin",
    "eren",
    "mikasa",
  ]
}
