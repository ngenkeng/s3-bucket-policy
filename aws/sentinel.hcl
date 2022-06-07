policy "require-private-acl-and-kms-for-s3-buckets" {
    enforcement_level = "advisory"
}

policy "restrict-s3-bucket-policies" {
    enforcement_level = "advisory"
}

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
  source = "../aws-functions/aws-functions.sentinel"
}