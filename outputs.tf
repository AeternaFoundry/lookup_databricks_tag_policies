output "tag_policies_lookup_page_size" {
  description = "Map of page_size values across all tag_policies_lookup, keyed the same as var.tag_policies_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_tag_policies.tag_policies_lookup : k => v.page_size if v.page_size != null }
}
output "tag_policies_lookup_provider_config" {
  description = "Map of provider_config values across all tag_policies_lookup, keyed the same as var.tag_policies_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_tag_policies.tag_policies_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "tag_policies_lookup_tag_policies" {
  description = "Map of tag_policies values across all tag_policies_lookup, keyed the same as var.tag_policies_lookup except keys with no tag_policies are omitted"
  value       = { for k, v in data.databricks_tag_policies.tag_policies_lookup : k => v.tag_policies if v.tag_policies != null && length(v.tag_policies) > 0 }
}

