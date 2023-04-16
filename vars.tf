

variable "jobs-folder"{
    default="infra"
}

variable "jobs"{
    default=[
        {
            name="example",
            folder="infra", 
            repo_url="https://github.com/sai-pranay-teja/Groovy-practise.git"
        }
    ]
}

