data "databricks_tag_policies" "tag_policies_lookup" {
  for_each = var.tag_policies_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

