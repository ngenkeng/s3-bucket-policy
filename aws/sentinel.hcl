policy "require-private-acl-and-kms-for-s3-buckets" {
    enforcement_level = "advisory"
}

policy "restrict-s3-bucket-policies" {
    enforcement_level = "advisory"
}

module "tfplan-functions" {
  source = "./mocks/3-bucket-mock-tfplan-v2.sentinel"
}

module "tfstate-functions" {
  source = "./mocks/3-bucket-mock-tfstate-v2.sentinel"
}

module "tfconfig-functions" {
  source = "./mocks/3-bucket-mock-tfconfig-v2.sentinel"
}

