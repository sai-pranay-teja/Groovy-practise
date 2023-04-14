
terraform {
  required_providers {
    jenkins = {
      source = "registry.terraform.io/taiidani/jenkins"
    }
  }
}

locals {
  public_ip=aws_spot_instance_request.name_2.public_ip
}


provider "jenkins" {
    server_url = "http://44.205.21.179:8080/"
    username   = lookup(aws_ssm_parameter.jenkins_user, "value", "NULL")
    password   = lookup(aws_ssm_parameter.jenkins_pass, "value", "NULL")

}

resource "jenkins_folder" "example" {
  count=length(var.jobs-folder)
  name = element(var.jobs-folder, count.index)
}

resource "jenkins_job" "example" {
  count=length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null)
  folder   = lookup(element(var.jobs, count.index), "folder", null)
  #folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"
  template = templatefile("${path.root}/job.xml", {
    repo_url=lookup(element(var.jobs, count.index), "repo_url", null)
  })
}





