variable "postgres_port" {
    type = number
    default = 5432
}

variable "hasura_port" {
    type = number
    default = 8090
}

variable "POSTGRES_PASSWORD" {
    type = string
    sensitive = true
}

variable "HASURA_ADMIN_SECRET" {
    type = string
    sensitive = true
}
