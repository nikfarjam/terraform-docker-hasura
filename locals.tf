locals {
  containers = {
    hasura = {
      image    = "hasura/graphql-engine"
      int_port = 8080
      ext_port = var.hasura_port
      path     = "/var/lib/hasura/data"
      env = [
        {
          "key"   = "HASURA_GRAPHQL_ENABLE_CONSOLE"
          "value" = "true"
        },
        {
          "key"   = "HASURA_GRAPHQL_ADMIN_SECRET"
          "value" = var.HASURA_ADMIN_SECRET
        },
        {
          "key"   = "HASURA_GRAPHQL_DATABASE_URL"
          "value" = "postgres://postgres:${urlencode(var.POSTGRES_PASSWORD)}@postgres:${var.postgres_port}/postgres"
        }
      ]

    }
    postgres = {
      image    = "postgres:16.0"
      int_port = 5432
      ext_port = var.postgres_port
      path     = "/var/lib/postgresql/data"
      env = [
        {
          "key"   = "POSTGRES_PASSWORD"
          "value" = var.POSTGRES_PASSWORD
        }
      ]
    }
  }

  network_name = "postgres_network"
}