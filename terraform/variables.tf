variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "catalogue"
  }
}

variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

variable "zone_name" {
  default = "daws66s.online"
}

variable "app_version" {
  
}
 
 variable "iam_instance_profile" {
  default = "ShellScriptRoleForRoboshop"
}