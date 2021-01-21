resource "docker_container" "wordpress" {
    name  = var.containernames[0]
    restart = var.containerestpol[3]
    image = docker_image.wordpress.latest
    networks_advanced {
        name = docker_network.wp_net.id
    }
    ports {
        internal = var.internal_ports[0]
        external = var.external_ports[0]
    }
    volumes {
        container_path = "/var/www/html"
        host_path = "${path.cwd}/wordpress"
    }
}

resource "docker_container" "database" {
  name  = var.containernames[1]
  image = docker_image.database.latest
  restart = var.containerestpol[2]
  networks_advanced {
      name = docker_network.wp_net.id
  }
  env = [
     "MYSQL_ROOT_PASSWORD=${random_string.password.result}_rootpswd",
     "MYSQL_PASSWORD=${random_string.mysqlpass.result}_sqltepwd",
     "MYSQL_USER=wordpress",
     "MYSQL_DATABASE=wordpress"
  ]
  ports {
      internal = var.internal_ports[1]
      external = var.external_ports[1]
  }
  volumes {
      container_path = "/var/lib/mysql"
      host_path = "${path.cwd}/database"
  }
}