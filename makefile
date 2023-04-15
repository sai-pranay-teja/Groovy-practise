git:
	rm -rf .terraform* terraform*
	git pull

apply: git
	terraform init
	terraform apply -auto-approve -var-tfile=vars.tfvars




destroy:
	terraform destroy -auto-approve