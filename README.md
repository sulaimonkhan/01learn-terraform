# 01learn-terraform

output "sample" { 
  value = "HelloWorld"
}

## Any string in terraform need to be quoted with Double quotes only.
# single quotes are not supported

output "sample" {
  value = 1000    
}

# numbers and booleans, ( true , false )