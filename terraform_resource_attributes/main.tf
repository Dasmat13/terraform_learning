resource "local_file" "pet" {
    filename = var.filename
    content = "my favourite pet is Mr.cat ${random_pet.my-pet.id}" 
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}