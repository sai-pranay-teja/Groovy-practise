git:
	git pull

apply-instance: git
	terraform init
	terraform apply -auto-approve




destroy:
	terraform destroy -auto-approve