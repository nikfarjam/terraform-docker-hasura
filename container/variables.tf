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