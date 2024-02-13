###########
# outputs #
###########

output "cheesecakes" {
  value = data.cheesecake_cheesecakes.all.cheesecakes
}

output "nested_hello_world" {
  value = local._common.hello_world
}

# vim:ft=terraform:
