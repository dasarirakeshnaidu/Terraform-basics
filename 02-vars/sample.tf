variable "sample" {
    default    = "Welcome to terraform learning"
}

output "sample_op" {
    value     =  var.sample
}

output "sample_output" {
     value     = "Value of the sample variable is ${var.sample}"
}

#  A variable can be accessed without ${} as well, if it's not accompanied in any sentence. If you just want to use it, you can directly refer it as `var.VariableName`

variable "integer" {
    default = 1000
}

output "number" {
    value = var.integer 
}

# List variable 
variable "sample_list" {
    default = [
        "Terraform",
        "Training",
        "Pulumi",
        "Cloud Formation",
        120,
        true,
        "ManuVerma"
    ]
}

# From the above list block, data in that block can be of any type 
output "sample_list_op" {
    value = "Welcome to ${var.sample_list[0]} Training and duration of the training is  ${var.sample_list[4]} hours"
}
