output "directory_id" {
  value = aws_directory_service_directory.this.id
}

output "access_url" {
  value = aws_directory_service_directory.this.access_url
}

output "dns_ip_addresses" {
  value = aws_directory_service_directory.this.dns_ip_addresses
}

