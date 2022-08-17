cd environments/<<env>>
terragrunt init

terragrunt plan-all --terragrunt-non-interactive
terragrunt apply-all --terragrunt-non-interactive

terragrunt destroy-all --terragrunt-non-interactive
