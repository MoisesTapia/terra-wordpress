resource "random_password" "password" {
  length = 6
  special = true
  override_special = "_%@"
}