module image {
    source = "./image"
    for_each = local.containers
    image_name_in = each.value.image
}

module container {
    source = "./container"
    for_each = local.containers
    image_id_in = module.image[each.key].image_id_out
    container_name_in = each.key
    int_port_in = each.value.int_port
    ext_port_in = each.value.ext_port
    container_path_in = each.value.path
}