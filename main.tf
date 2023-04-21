module "Instance-setup" {
    source = "git::https://github.com/sai-pranay-teja/Instance-setup.git"
    
  
}


module "Jenkins-setup"{
    source = "./Jenkins-setup"
    #public_ip=module.Instance-setup.public_ip
    public_ip=module.Instance-setup.public_ip
}

