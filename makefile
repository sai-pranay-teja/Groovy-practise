git:
	git pull

apply-instance: git
    rm -rf .terraform* terraform*
	terraform init
	terraform apply -auto-approve




destroy:
	terraform destroy -auto-approve