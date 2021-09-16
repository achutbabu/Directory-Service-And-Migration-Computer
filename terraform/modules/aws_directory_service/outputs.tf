output "directory_id" {
  value = aws_directory_service_directory.main.id
}

output "access_url" {
  value = aws_directory_service_directory.main.access_url
}

output "dns_ip_addresses" {
  value = aws_directory_service_directory.main.dns_ip_addresses
}

