provider "aws" {
    region = "us-east-1"
  
}
module "Instance-setup" {
    source = "./Instance-setup"
    
  
}


module "Jenkins-setup"{
    depends_on = [
      module.Instance-setup
    ]
    source = "./Jenkins-setup"
    public_ip=module.Instance-setup.public_ip
   
}

