resource "docker_container" "container" {
  name  = var.container_name_in
  image = var.image_id_in

  ports {
    internal = var.int_port_in
    external = var.ext_port_in
  }

  volumes {
    container_path = var.container_path_in
    volume_name    = docker_volume.container_volume.name
  }

  env = [for v in var.container_env_in : join("=", [v.key, v.value])]

  networks_advanced {
    name = var.network_name_in
  }
}

resource "docker_volume" "container_volume" {
  name = "${var.container_name_in}_volume"
}