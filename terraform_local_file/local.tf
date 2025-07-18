resource "local_file" "pets"{
    filename = "${pathexpand("~")}/pet.txt"
    content = "we love pets"
    file_permission = "0777"
}