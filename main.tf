resource "google_contact_center_insights_assessment_rule" "contact_center_insights_assessment_rules" {
  for_each = var.contact_center_insights_assessment_rules

  location           = each.value.location
  active             = each.value.active
  assessment_rule_id = each.value.assessment_rule_id
  deletion_policy    = each.value.deletion_policy
  display_name       = each.value.display_name
  project            = each.value.project

  dynamic "sample_rule" {
    for_each = each.value.sample_rule != null ? [each.value.sample_rule] : []
    content {
      conversation_filter = sample_rule.value.conversation_filter
      dimension           = sample_rule.value.dimension
      sample_percentage   = sample_rule.value.sample_percentage
      sample_row          = sample_rule.value.sample_row
    }
  }

  dynamic "schedule_info" {
    for_each = each.value.schedule_info != null ? [each.value.schedule_info] : []
    content {
      end_time   = schedule_info.value.end_time
      schedule   = schedule_info.value.schedule
      start_time = schedule_info.value.start_time
      time_zone  = schedule_info.value.time_zone
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

