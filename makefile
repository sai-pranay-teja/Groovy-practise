git:
	rm -rf .terraform* terraform*
	git pull remote origin

apply: git
	terraform init
	terraform apply -auto-approve




destroy:
	terraform destroy -auto-approve