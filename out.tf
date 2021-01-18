# output "ip_wordpress" {
#     description = "The ip address of wordpress container"
#     value = docker_container.wordpress.ip_address
# }
# 
# output "ip_dbcms" {
#     description = "The ip address of Database container"
#     value = docker_container.database.ip_address
# }

#output "wordpress-ip-external_port" {
#    description = "The ip address of wordpress container"
#    value = join(":", [docker_container.wordpress.ip_address, docker_container.wordpress.ports[0].external ])
#}
#
#output "mysql-ip-external_port" {
#    description = "The ip address of Database container"
#    value = join(":", [docker_container.database.ip_address, docker_container.database.ports[0].external ])
#}

output "database-ip-external_port-name" {
    description = "The ip address of Database container"
    value = [for i in docker_container.database[*]: join(":", [i.ip_address],i.ports[*]["external"], [i.name])]
}

output "wordpress-ip-external_port-name" {
    description = "The ip address of wordpress container"
    value = [for i in docker_container.wordpress[*]: join(":", [i.ip_address],i.ports[*]["external"], [i.name])]
}

#output "container_name" {
#    description = "The name of db container"
#    value = docker_container.wordpress.name
#}
#
#output "container_name_bd" {
#    description = "The name of wordpress container"
#    value = docker_container.database.name
#}