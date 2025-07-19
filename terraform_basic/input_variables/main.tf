resource "local_file" "pet" {
    filename = var.filename
    content = var.content
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
  
}

#lsit example

resource "random_pet" "list" {
    prefix = var.prefix1[1]
    separator = var.separator
    length = var.length
}

#map example 

resource "local_file" "my-map" {
    filename = "/root/map.txt"
    content = var.file-content["statement1"]
}