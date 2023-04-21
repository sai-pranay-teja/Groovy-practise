
terraform {
  required_providers {
    jenkins = {
      source = "registry.terraform.io/taiidani/jenkins"
    }
  }
}


provider "jenkins" {
    server_url = "http://${var.public_ip}:8080/"
    username   = lookup(aws_ssm_parameter.jenkins_user, "value", "NULL")
    password   = lookup(aws_ssm_parameter.jenkins_pass, "value", "NULL")


}


resource "jenkins_folder" "example" {
  count = length(var.jobs-folder)
  name = element(var.jobs-folder, count.index)
}

resource "jenkins_job" "example" {
  depends_on = [jenkins_folder.example,aws_ssm_parameter.jenkins_user, aws_ssm_parameter.jenkins_pass]
  count=length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null)
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"
  template = templatefile("${path.module}/job.xml", {
    repo_url=lookup(element(var.jobs, count.index), "repo_url", null)
  })
}





