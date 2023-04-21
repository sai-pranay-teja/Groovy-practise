

variable "jobs-folder"{
    default=["folder"]
}

variable "jobs"{
    default=[
        {
            name="example",
            folder="folder", 
            repo_url="https://github.com/sai-pranay-teja/Groovy-practise.git"
        }
    ]
}

variable "jenkins_user" {}
variable "jenkins_pass" {}