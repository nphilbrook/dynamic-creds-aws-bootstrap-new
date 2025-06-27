Based on this, look there: https://github.com/hashicorp/terraform-dynamic-credentials-setup-examples/tree/main/aws

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.9.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>5.73 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~>0.59 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~>4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~>5.73 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~>0.59 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | ~>4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.oidc_provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_policy.tf_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.tf_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.tf_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [tfe_project_variable_set.project_association](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project_variable_set) | resource |
| [tfe_variable.enable_aws_provider_auth](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.tf_aws_role_arn](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.aws_variable_set](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [aws_iam_openid_connect_provider.existing_oidc_provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_openid_connect_provider) | data source |
| [tfe_project.project](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/project) | data source |
| [tls_certificate.tf_certificate](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_TFC_WORKSPACE_SLUG"></a> [TFC\_WORKSPACE\_SLUG](#input\_TFC\_WORKSPACE\_SLUG) | Automatically injected by Terraform | `string` | n/a | yes |
| <a name="input_create_aws_openid_connect_provider"></a> [create\_aws\_openid\_connect\_provider](#input\_create\_aws\_openid\_connect\_provider) | If set to true, a new AWS OpenID Connect Provider will be provisioned and managed by this root module. If set to false, an existing provider must already exist in the AWS account for the specified tf\_hostname. | `bool` | `true` | no |
| <a name="input_tf_hostname"></a> [tf\_hostname](#input\_tf\_hostname) | The hostname of the HCP Terraform or TFE instance you'd like to use with AWS | `string` | `"app.terraform.io"` | no |
| <a name="input_tf_organization_name"></a> [tf\_organization\_name](#input\_tf\_organization\_name) | The name of your HCP Terraform or TFE organization | `string` | n/a | yes |
| <a name="input_tf_project_name"></a> [tf\_project\_name](#input\_tf\_project\_name) | The name of an HCP Terraform or TFE project. Leave the default '*' to enable for any projects in the above organization. If set to non-default, both the variable set AND the AWS Role will be scoped to this project. | `string` | `"*"` | no |
| <a name="input_tf_variable_set_name"></a> [tf\_variable\_set\_name](#input\_tf\_variable\_set\_name) | The name of the variable set you want to target in which to create AWS dynamic cred variables. | `string` | `"Dynamic AWS OIDC WIF credentials"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->