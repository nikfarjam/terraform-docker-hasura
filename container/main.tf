resource "docker_container" "ubuntu" {
  name  = var.container_name_in
  image = var.image_id_in

  ports {
    internal = var.int_port_in
    external = var.ext_port_in
  }

  volums {
    container_path = var.container_path_in
    volume_name    = docker_volume.container_volume.name
  }
}

resource "docker_volume" "container_volume" {
  name = "${var.container_name_in}_volume"
}