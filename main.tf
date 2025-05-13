provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "redis" {
  name  = "redis-container"
  image = "redis:alpine"
}

resource "docker_container" "mysql" {
  name  = "mysql-container"
  image = "mysql:5.7"
  env   = ["MYSQL_ROOT_PASSWORD=password123"]
}
