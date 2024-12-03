############################## *! Credentials of AWS in Terraform Terminal ##############################
* Linux/MacOS:
    export AWS_ACCESS_KEY_ID=<key>
    export AWS_SECRET_ACCESS_KEY=<key>
    export AWS_DEFAULT_REGION=<region>

* Windows:
    $Env:AWS_ACCESS_KEY_ID=<key>
    $Env:AWS_SECRET_ACCESS_KEY=<key>
    $Env:AWS_DEFAULT_REGION=<region>

? Terraform main commands:
?   terraform init
?   terraform validate
?   terraform plan
?       * -out <name> = save plan as
?   terraform apply
?       * -auto-approve = create without asking
?   terraform destroy


############################## *! Resource Block ##############################
    
    resource "resource_name" "name" {
    identifier = "argument"
    }

############################## *! AWS Provider Block ############################## 
    
    provider "aws" {
  region     = "region"
  access_key = "key"
  secret_key = "key"
}

############################### *! Reference Resource Block ##############################

?   ${resource_type.resource.name}

############################### *! Variable Block ##############################

    variable "name"{
        type= "type"
        description= "description"
        default = "expression"
        sensitive= "boolean"
        validation = "rule"
    }

?   var.name.<var_type>

############################### *! Local Block ##############################
    
    locals {
        local_variable_name ="expression or value"
    }

############################### *! Data Block ##############################
    
    data "data_type" "data_local_name"{
        identifier = "argument"
    }

############################### *! Reference Data Block ##############################

    data.name

############################### *! Terraform Configuration Block ##############################

    terraform {
        argument = value
    }

############################### *! Module Block ##############################

    module "module_name"{
        source = "module_source"
        input_name = "Description" 
        input_name = "Description" 
    }

############################### *! Output Block ##############################

    output "name"{
        value = "expression"
    }

?   terraform output -json
