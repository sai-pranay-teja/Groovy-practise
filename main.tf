module "Instance-setup" {
    source = "git::https://github.com/sai-pranay-teja/Instance-setup.git"
    
  
}


module "Jenkins-setup" {
    depends_on = [module.Instance-setup]
    source = "./Jenkins-setup"
    public_ip=module.Instance-setup.public_ip
  
}

output "public_ip" {
    value=module.Instance-setup
  
}