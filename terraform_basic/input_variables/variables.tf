variable "filename" {
    default = "/root/pets.txt"
}

variable "content" {
    default = "my lovely pet"
}

variable "prefix" {
    default = "Mrs"
}

variable "separator" {
    default = "."
}

variable "length" {
    default = "1"
}

##list 

variable "prefix1" {
    default = ["Mr","Mrs","Sir"]
    type = list(string)
}

##map 

variable "file-content" {
    type = map
    default = {
        "statement" = "we love pets"
        "statement2" = "we love animals"
    }
}

##set: the difference between set and list is a set cannot have duplicate elements

##object 

 variable "bella" {
    type = object({
      name = string
      color = string
      age = number
      food = list(string)
      favourite_pet = bool 
    }) 
 }

 ##tuples

 variable "kitty" {
    type = tuple([ string, number, bool ])
    default = [ "cat", 1, false ]
   
 }