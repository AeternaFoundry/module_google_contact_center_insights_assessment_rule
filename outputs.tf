output "contact_center_insights_assessment_rules_id" {
  description = "Map of id values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no id are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "contact_center_insights_assessment_rules_active" {
  description = "Map of active values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no active are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.active if v.active != null }
}
output "contact_center_insights_assessment_rules_assessment_rule_id" {
  description = "Map of assessment_rule_id values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no assessment_rule_id are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.assessment_rule_id if v.assessment_rule_id != null && length(v.assessment_rule_id) > 0 }
}
output "contact_center_insights_assessment_rules_create_time" {
  description = "Map of create_time values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no create_time are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "contact_center_insights_assessment_rules_deletion_policy" {
  description = "Map of deletion_policy values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "contact_center_insights_assessment_rules_display_name" {
  description = "Map of display_name values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no display_name are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "contact_center_insights_assessment_rules_location" {
  description = "Map of location values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no location are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.location if v.location != null && length(v.location) > 0 }
}
output "contact_center_insights_assessment_rules_name" {
  description = "Map of name values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no name are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "contact_center_insights_assessment_rules_project" {
  description = "Map of project values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no project are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "contact_center_insights_assessment_rules_sample_rule" {
  description = "Map of sample_rule values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no sample_rule are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => one(v.sample_rule) if v.sample_rule != null && length(v.sample_rule) > 0 }
}
output "contact_center_insights_assessment_rules_schedule_info" {
  description = "Map of schedule_info values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no schedule_info are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => one(v.schedule_info) if v.schedule_info != null && length(v.schedule_info) > 0 }
}
output "contact_center_insights_assessment_rules_update_time" {
  description = "Map of update_time values across all contact_center_insights_assessment_rules, keyed the same as var.contact_center_insights_assessment_rules except keys with no update_time are omitted"
  value       = { for k, v in google_contact_center_insights_assessment_rule.contact_center_insights_assessment_rules : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

