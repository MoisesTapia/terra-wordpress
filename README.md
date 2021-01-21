# Terra-Wordpress

![terraform](https://img.shields.io/badge/Terraform-0.12-blue?style=plastic&logo=terraform)
![docker](https://img.shields.io/badge/Docker-v19.03.12-blue?style=plastic&logo=docker)
![linux](https://img.shields.io/badge/linux-debian_10-informational?style=plastic&logo=linux)
![issues](https://img.shields.io/github/issues/MoisesTapia/terra-wordpress?style=plastic)
![starts](https://img.shields.io/github/stars/MoisesTapia/terra-wordpress?style=plastic)
![License](https://img.shields.io/github/license/MoisesTapia/terra-wordpress?style=plastic)
![fork](https://img.shields.io/github/forks/MoisesTapia/terra-wordpress?color=se&style=plastic)<br>

## Deploy a Wordpress with MYSQL with docker and terraform

### Info

No. containers: 2 <br>
Terraform version: v0.12.24 <br>
Docker version: 19.03.13, build 4484c46d9d

## How to deploy

```bash
git clone https://github.com/MoisesTapia/terra-wordpress
cd terra-wordpress
terraform plan -out terraform.tfplan
terraform apply terraform.tfplan
```
## Look all outputs

```bash
terraform output
```
## How to destroy

```bash
terraform destroy --auto-approve
```

## Change the path of your docker volumes

```bash

  volumes {
      container_path = "/var/lib/mysql" --------
      host_path = "/home/moisestapia/EMS/Terraform/terra-cert-docker/terra-wordpress/database"
  }

```


*where:* <br>
container_path  = The path in the container where the volume will be mounted.<br>
host_path =  The path on the host where the volume is coming from.<br>

[Look the file](https://github.com/MoisesTapia/terra-wordpress/blob/main/container.tf)

## Check docker container

```bash

docker container ls

```
