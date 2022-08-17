cd environments/<<env>>
### Terragrunt init
terragrunt init
### Plan all
terragrunt plan-all --terragrunt-non-interactive
terragrunt run-all plan --terragrunt-non-interactive
### Apply all
terragrunt apply-all --terragrunt-non-interactive
terragrunt run-all apply --terragrunt-non-interactive
### Destroy all
terragrunt destroy-all --terragrunt-non-interactive
