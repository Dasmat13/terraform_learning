resource "local_file" "pet" {
    filename = "${pathexpand("~")}/pet.txt"
    content = "we love pets"
}

resource "random_pet" "my-pet" {
    prefix = "Mrs"
    separator = "."
    length = "1"
  
}