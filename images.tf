# Download Docker Image

# In this file we will download all images that we will use.

resource "docker_image" "wordpress" {
  name = var.dockerimages["wordpress"]
}

resource "docker_image" "database" {
  name = var.dockerimages["mysql"]
}