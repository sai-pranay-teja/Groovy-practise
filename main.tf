provider "aws" {
    region = "us-east-1"
  
}
module "Instance-setup" {
    source = "git::https://github.com/sai-pranay-teja/Instance-setup.git"
    
  
}


module "Jenkins-setup"{
    depends_on = [
      module.Instance-setup
    ]
    source = "git::https://github.com/sai-pranay-teja/Jenkins-setup.git"
    public_ip=module.Instance-setup.public_ip
   
}

