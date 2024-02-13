###########
# outputs #
###########

output "hello_world" {
  value = "hello world"
}

output "ssh_private_key" {
  value     = tls_private_key.example.private_key_openssh
  sensitive = true
}

# vim:ft=terraform:
