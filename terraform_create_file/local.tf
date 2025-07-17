resource "local_file" "pets"{
    filename = "/root/pet.txt"
    content = "we love pets"
}