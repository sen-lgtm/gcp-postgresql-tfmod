resource "google_sql_database_instance" "this" {
  project          = var.gcp_project
  region           = var.gcp_region
  name             = var.instance_name
  database_version = var.instance_version

  settings {
    tier = var.instance_tier
  }
}

resource "google_sql_database" "instance_databases" {
  for_each = toset(var.instance_databases)
  name     = each.key
  instance = google_sql_database_instance.this.name
}

resource "random_password" "user_passwords" {
  for_each = toset(var.instance_users)
  length   = 16
}

resource "google_sql_user" "instance_users" {
  for_each = toset(var.instance_users)
  name     = each.key
  instance = google_sql_database_instance.this.name
  password = random_password.user_passwords[each.key].result
}
