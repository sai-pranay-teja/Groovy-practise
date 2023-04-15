git:
	git pull

apply: git
	terraform init
	terraform apply -auto-approve




destroy:
	terraform destroy -auto-approve