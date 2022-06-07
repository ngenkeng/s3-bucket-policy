policy "require-private-acl-and-kms-for-s3-buckets" {
    enforcement_level = "advisory"
}

policy "restrict-s3-bucket-policies" {
    enforcement_level = "advisory"
}


module "tfplan-functions" {
}

module "tfstate-functions" {
  
}

module "tfconfig-functions" {
 
}

module "aws-functions" {}
  
