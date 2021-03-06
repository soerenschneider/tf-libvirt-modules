init:
	terraform init

plan-vserver-dd:
	terraform workspace select vserver-dd && terraform plan -var-file envs/vserver-dd.tfvars

apply-vserver-dd: init
	terraform workspace select vserver-dd && terraform apply -auto-approve -var-file envs/vserver-dd.tfvars

destroy-vserver-dd:
	terraform workspace select vserver-dd && terraform destroy -var-file envs/vserver-dd.tfvars

plan-vserver-ez:
	terraform workspace select vserver-ez && terraform plan -var-file envs/vserver-ez.tfvars

apply-vserver-ez: init
	terraform workspace select vserver-ez && terraform apply -auto-approve -var-file envs/vserver-ez.tfvars

destroy-vserver-ez:
	terraform workspace select vserver-ez && terraform destroy -var-file envs/vserver-ez.tfvars

plan-nuc-dd:
	terraform workspace select nuc-dd && terraform plan -var-file envs/nuc-dd.tfvars

apply-nuc-dd: init
	terraform workspace select nuc-dd && terraform apply -var-file envs/nuc-dd.tfvars

destroy-nuc-dd:
	terraform workspace select nuc-dd && terraform destroy -var-file envs/nuc-dd.tfvars

output: init
	terraform output
