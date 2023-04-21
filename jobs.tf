
terraform {
  required_providers {
    jenkins = {
      source = "registry.terraform.io/taiidani/jenkins"
    }
  }
}


provider "jenkins" {
    server_url = "http://34.234.167.177:8080/"
    #username   = lookup(aws_ssm_parameter.jenkins_user, "value", "NULL")
    #password   = lookup(aws_ssm_parameter.jenkins_pass, "value", "NULL")
    username=var.jenkins_user
    password=var.jenkins_pass
}


resource "jenkins_folder" "example" {
  count = length(var.jobs-folder)
  name = element(var.jobs-folder, count.index)
}

resource "jenkins_job" "example" {
  depends_on = [jenkins_folder.example,module.Instance-setup]
  count=length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null)
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"
  template = templatefile("${path.root}/job.xml", {
    repo_url=lookup(element(var.jobs, count.index), "repo_url", null)
  })
}





