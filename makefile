git:
	git pull

apply: git
	terraform destroy -auto-approve
	terraform init
	terraform apply -auto-approve



destroy: 
	terraform destroy -auto-approve