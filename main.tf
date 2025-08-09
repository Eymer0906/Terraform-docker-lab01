terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_container" "load_balancer" {
  name  = "nginx-lb"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8080
  }
}

resource "docker_container" "web1" {
  name  = "web1"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8081
  }
}

resource "docker_container" "web2" {
  name  = "web2"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8082
  }
}

resource "docker_container" "mysql_db" {
  name  = "mysql-db"
  image = "mysql:8.0"
  env = [
    "MYSQL_ROOT_PASSWORD=secret",
    "MYSQL_DATABASE=appdb"
  ]
  ports {
    internal = 3306
    external = 3307
  }
}
