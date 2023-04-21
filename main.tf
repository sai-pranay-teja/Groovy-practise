module "Instance-setup" {
    source = "git::https://github.com/sai-pranay-teja/Instance-setup.git"

  
}

jenkins_user=module.Instance-setup.jenkins_user
jenkins_pass=module.Instance-setup.jenkins_pass