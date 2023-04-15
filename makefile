git:
	rm -rf .terraform* terraform*
	git pull

apply: git
	terraform init
	terraform apply -var-file=vars.tfvars -auto-approve




destroy:
	terraform destroy -var-file=vars.tfvars -auto-approve