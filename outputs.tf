output "instance_public_ip_address" {
  value       = google_sql_database_instance.this.public_ip_address
  description = "The first public (PRIMARY) IPv4 address assigned to the Cloud SQL instance"
}
