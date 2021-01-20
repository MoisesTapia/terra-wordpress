resource "docker_container" "wordpress" {
    name  = "wordpress"
    restart = var.containerestpol[3]
    image = docker_image.wordpress.latest
    ports {
        internal = var.internal_ports[0]
        external = var.external_ports[0]
    }
    volumes {
        container_path = "/var/www/html"
        host_path = "/home/moisestapia/EMS/Terraform/terra-cert-docker/terra-wordpress/wordpress"
    }
}

resource "docker_container" "database" {
  name  = "dbcms"
  image = docker_image.database.latest
  restart = var.containerestpol[2]
  env = [
     "MYSQL_ROOT_PASSWORD=${random_password.password.result}_wpss",
     "MYSQL_PASSWORD=wordpress",
     "MYSQL_USER=wordpress",
     "MYSQL_DATABASE=wordpress"
  ]
  ports {
      internal = var.internal_ports[1]
      external = var.external_ports[1]
  }
  volumes {
      container_path = "/var/lib/mysql"
      host_path = "/home/moisestapia/EMS/Terraform/terra-cert-docker/terra-wordpress/database"
  }
}
