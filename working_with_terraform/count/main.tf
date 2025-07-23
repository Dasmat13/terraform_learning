resource "local_file" "pet" {
        count = length((var.filename))
    filename = var.filename[count.index]
      content  = "This is file number ${count.index + 1}" 
  
}