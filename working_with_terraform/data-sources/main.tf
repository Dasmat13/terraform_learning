resource "local_file" "pet" {
    filename = "/home/dasmat/pets.txt"
    content = data.local_file.dog.content
  
}

data "local_file" "dog" {
    filename = "/home/dasmat/dog.txt"
  
}
