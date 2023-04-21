module "Instance-setup" {
    source = "git::https://github.com/sai-pranay-teja/Instance-setup.git"

  
}

username=module.Instance-setup.jenkins_user
password=module.Instance-setup.jenkins_pass