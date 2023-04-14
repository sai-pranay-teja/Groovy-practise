git:
	git pull

apply: git
	terraform init
	terraform apply -auto-approve



destroy: git
	terraform destroy -auto-approve