git:
	rm -rf .terraform* terraform*
	git pull remote https://github.com/sai-pranay-teja/Groovy-practise.git

apply: git
	terraform init
	terraform apply -auto-approve




destroy:
	terraform destroy -auto-approve