especialpass    = "_%@"
containernames  = [
    "wordpress",
    "dbcms"
]
containerestpol = [
    "no",
    "unless-stopped",
    "always",
    "on-failure"
]

dockerimages    = {
    wordpress   = "wordpress:latest"
    mysql       = "mysql:5.7"
}
internal_ports  = [80,3306]
external_ports  = [8080,3306]