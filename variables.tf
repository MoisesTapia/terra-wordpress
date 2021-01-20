variable "especialpass"{
    description = ""
    type = string
}

variable "containernames" {
    description = "List of containers name"
    type = list(string)
  
}
variable "containerestpol" {
    description = "value"
    type = list(string)
}
variable "internal_ports" {
    description = "value"
    type = list(number)
}

variable "external_ports" {
    description = "value"
    type = list(number)
}

variable "dockerimages" {
    description = "value"
    type = map  
}