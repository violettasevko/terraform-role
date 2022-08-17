module "iam_assumable_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"

  trusted_role_arns = [
    "arn:aws:iam::280534998596:user/violetta-sevko",
  ]

  create_role = true

  role_name         = "testadmin"
  role_requires_mfa = false

  custom_role_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]
  #number_of_custom_role_policy_arns = 1
}