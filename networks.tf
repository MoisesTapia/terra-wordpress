resource "docker_network" "wp_net" {
  name   = "wordpress_net"
  driver = "bridge"
}