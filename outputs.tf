output "cortex_search_services_lookup_id" {
  description = "Map of id values across all cortex_search_services_lookup, keyed the same as var.cortex_search_services_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_cortex_search_services.cortex_search_services_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cortex_search_services_lookup_cortex_search_services" {
  description = "Map of cortex_search_services values across all cortex_search_services_lookup, keyed the same as var.cortex_search_services_lookup except keys with no cortex_search_services are omitted"
  value       = { for k, v in data.snowflake_cortex_search_services.cortex_search_services_lookup : k => v.cortex_search_services if v.cortex_search_services != null && length(v.cortex_search_services) > 0 }
}
output "cortex_search_services_lookup_in" {
  description = "Map of in values across all cortex_search_services_lookup, keyed the same as var.cortex_search_services_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_cortex_search_services.cortex_search_services_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "cortex_search_services_lookup_like" {
  description = "Map of like values across all cortex_search_services_lookup, keyed the same as var.cortex_search_services_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_cortex_search_services.cortex_search_services_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "cortex_search_services_lookup_limit" {
  description = "Map of limit values across all cortex_search_services_lookup, keyed the same as var.cortex_search_services_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_cortex_search_services.cortex_search_services_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "cortex_search_services_lookup_starts_with" {
  description = "Map of starts_with values across all cortex_search_services_lookup, keyed the same as var.cortex_search_services_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_cortex_search_services.cortex_search_services_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}

