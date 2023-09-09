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

# variable data types 
# 1. string
# 2. number
# 3. Boolean

# variables types 
# IN Ansible - 1. plain key, value 2. list 3. map/dict

# IN Terraform 
# 1. plain
# 2. list
# 3. map

## plain
variable "course" {
  default = "DevOps Training"  
}

# List
variable "courses" {
  default = [
    "DevOps",
    "AWS",
    "python"  
  ]  
}


## Map 
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
      duration = 30
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[2]
}

output "course_details" {
  value = var.course_details["DevOps"]
}

variable "env" {}

output "env" {
  value = var.env  
}