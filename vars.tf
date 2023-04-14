variable "jobs-folder"{
    default=["folder_1"]
}

variable "jobs"{
    default=[
        {
            name="example",
            folder="folder_1", 
            repo_url="https://github.com/sai-pranay-teja/Groovy-practise.git"
        }
    ]
}