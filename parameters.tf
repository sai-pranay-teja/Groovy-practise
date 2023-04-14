/* provider "aws" {
  region = "us-east-1"
  
} */


resource "aws_ssm_parameter" "jenkins_user" {
  name  = "jenkins_user"
  type  = "String"
  value = "admin"
}

resource "aws_ssm_parameter" "jenkins_pass" {
  name  = "jenkins_pass"
  type  = "String"
  value = "032db17b3c8b4414914916b63f010d1d"
  
}


