resource "local_file" "pet" {
    filename = var.filename
    content = "my favourite pet is Mr.cat"

    ##here we are using resource dependency or we called it explict dependency

    depends_on = [ 
        random_pet.my-pet
     ]
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
  
}