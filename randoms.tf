resource "random_string" "password" {
  length = 5
  special = false
  override_special = var.especialpass
}

resource "random_string" "mysqlpass" {
  length = 5
  special = false
  override_special = var.especialpass
}