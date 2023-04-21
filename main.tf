module "Instance-setup" {
    source = "git::https://github.com/sai-pranay-teja/Instance-setup.git"

  
}

output "public_ip" {
    value=module.Instance-setup
  
}