provider "aws" {
  region = "us-east-1"
  
}


resource "aws_ssm_parameter" "jenkins_user" {
  name  = "jenkins_user"
  type  = "String"
  value = "admin"
  overwrite = true
}

resource "aws_ssm_parameter" "jenkins_pass" {
  name  = "jenkins_pass"
  type  = "String"
  value = "Pranay1700#"
  overwrite = true
  
}


