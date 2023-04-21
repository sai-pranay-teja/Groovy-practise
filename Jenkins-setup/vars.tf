variable "public_ip"{}

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

