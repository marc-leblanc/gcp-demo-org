resource "random_pet" "widget" {
}

output "widget" { 
 value = random_pet.widget.id
}
  
