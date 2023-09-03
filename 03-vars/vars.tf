variable "sample" {
  default = 100    
}

variable "sample1" {
default = "Hello World"    
}


output "sample" {
  value = var.sample    
}

output "sample1" {
  value = var.sample1    
}

## sometime if variable/any reference with the combination of some other string then we have to access those in ${}

output "sample-ext" {
  value = "value of sample & sample1 - ${var.sample} - ${var.sample1}"    
}

# variable data types terraform supportes
# 1. string
# 2. number
# 3. boolean

# variables types 
# IN Ansible:- 1. plain key, value 2. list 3. map/dict
# list:- - apple
 #        - orange
  #       - grape
   #      - banana

# map/dict:- - { name: apple,quantity: 100}
    #         - { name: orange,quantity: 200}   
     ##       - { name: banana,quantity: 500}
            # - - { name: grape,quantity: 500}

# IN Terraform 
# 1. plain
# 2. list
# 3. map

# plain
variable "course" {
  default = "DevOps Training"  
}

# List
variable "courses" {
  default = [
    "DevOps"
    "AWS"
    "python"  
  ]  
}


# Map 
variable "course_details" {
  default = {
    DevOps = {
      name = "DevOps"
      timing = "10am"
      duration = 90  
    }  
    AWS = {
      name = "AWS"
      timing = "11am"
      duration = "30"  
    }
  }  
}


## output access

output "course" {
  value = var.course  
}

output "courses" {
  value = var.courses  
}

output "course_details" {
  value = var.course_details  
}