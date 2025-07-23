
resource "local_file" "pet" {
    filename = "/home/dasmat/pet1.txt"
    content = "we love pets"
    file_permission = "0700"
  
  lifecycle{
    create_before_destroy = true
  }
}
---------------------------------------
resource "local_file" "pet" {
    filename = "/home/dasmat/pet1.txt"
    content = "we love pets"
    file_permission = "0700"
  
  lifecycle {
    prevent_destroy = true
  }
}

-------------------------------------------
resource "local_file" "pet" {
    filename = "/home/dasmat/pet1.txt"
    content = "we love pets"
    file_permission = "0700"
  
  lifecycle {
    ignore-changes = {
        tags,ami
    }
  }
}

/*
1> create_before_destroy (create the resource first and then destroy older)
2> prevent_destroy (prevents destroy of a resource)
3> ignore_changes (ignore_changes to resource attributes (specific/all))
/*