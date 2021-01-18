# Download Docker Image

# In this file we will download all images that we will use.

resource "docker_image" "wordpress" {
  name = "wordpress:latest"
}

resource "docker_image" "database" {
  name = "mysql:5.7"
}