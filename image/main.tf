resource "docker_image" "container_image" {
  name = var.image_name_in
  keep_locally = true
}