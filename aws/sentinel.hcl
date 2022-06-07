module "tfplan-functions" {
  source = "https://github.com/ngenkeng/s3-bucket-policy/tree/main/aws/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "https://github.com/ngenkeng/s3-bucket-policy/tree/main/aws/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "https://github.com/ngenkeng/s3-bucket-policy/tree/main/aws/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "https://github.com/ngenkeng/s3-bucket-policy/tree/main/aws/aws-functions/aws-functions.sentinel"
}



policy "require-private-acl-and-kms-for-s3-buckets" {
  source = "https://github.com/ngenkeng/s3-bucket-policy/tree/main/require-private-acl-and-kms-for-s3-buckets.sentinel"
  enforcement_level = "hard-mandatory"
}
/*
policy "restrict-s3-bucket-policies" {
  source = "https://github.com/ngenkeng/s3-bucket-policy/tree/main/restrict-s3-bucket-policies.sentinel"
  enforcement_level = "hard-mandatory"
}*/


