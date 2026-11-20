# Terraform Platform Engineering Instructions

This repository manages Azure infrastructure using Terraform.

## Terraform Requirements

- Use the official HashiCorp AzureRM provider.
- Retrieve relevant provider documentation through Terraform MCP before generating unfamiliar resources.
- Prefer existing approved Terraform modules.
- Use variables for configurable infrastructure values.
- Do not hardcode credentials or secrets.
- Use the configured Azure Blob remote-state backend.
- Never commit Terraform state files or saved plans.

## Security

- Follow least-privilege access principles.
- Do not expose SSH or RDP publicly by default.
- Do not create unrestricted inbound NSG rules.
- Do not include secrets in prompts, logs, or generated files.

## Change Management

- Generate Terraform code through feature branches.
- Explain infrastructure changes before modifying files.
- Run terraform fmt and terraform validate.
- Do not run terraform apply or terraform destroy.
- Do not change remote state or execute state migration commands without explicit approval.
- Production changes require pull-request review and pipeline approval.
