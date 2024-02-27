terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "nginx" {
  count = var.num_containers

  name  = "nginx_container_${count.index}"
  image = var.image_name

  memory = var.container_memory

  privileged = var.privileged

  ports {
    internal = 80
    external = var.start_port + count.index
  }
}
