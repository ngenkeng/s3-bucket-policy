module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
  source = "./require-private-acl-and-kms-for-s3-buckets.sentinel"
  enforcement_level = "hard-mandatory"
}



policy "restrict-s3-bucket-policies" {
  source = "./restrict-s3-bucket-policies.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "restrict-assumed-roles-by-workspace" {
  source = "./restrict-assumed-roles-by-workspace.sentinel"
  enforcement_level = "hard-mandatory"
}

