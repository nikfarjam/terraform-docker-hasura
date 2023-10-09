variable "image_id_in" {
    type = string
    description = "Resource ID of the image"
}

variable "container_name_in" {
    type = string
    description = "Name of container"
}

variable "int_port_in" {
    type = number
    description = "Internal port"
}

variable "ext_port_in" {
    type = number
    description = "Expose port"
}

variable "container_path_in" {
    type = string
    description = "Path of volum for the container"
}

variable "network_name_in" {
    type = string
    description = "Name of network for container orchestra"
}

variable "container_env_in" {
    type = list(map(string))
    description = "Environment variable for the container"
}