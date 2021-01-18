resource "docker_container" "wordpress" {
    name  = "wordpress"
    image = docker_image.wordpress.latest
    ports {
        internal = 80
        external = 8080
    }
    volumes {
        container_path = "/var/www/html"
        host_path = "/home/moisestapia/EMS/Terraform/terra-cert-docker/terra-wordpress/wordpress"
    }
}

resource "docker_container" "database" {
  name  = "dbcms"
  image = docker_image.database.latest
  restart = "always"
  env = [
     "MYSQL_ROOT_PASSWORD=wordpress",
     "MYSQL_PASSWORD=wordpress",
     "MYSQL_USER=wordpress",
     "MYSQL_DATABASE=wordpress"
  ]
  ports {
      internal = 3306
      external = 3306
  }
  volumes {
      container_path = "/var/lib/mysql"
      host_path = "/home/moisestapia/EMS/Terraform/terra-cert-docker/terra-wordpress/database"
  }
}
