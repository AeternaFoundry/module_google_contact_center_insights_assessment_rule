variable "contact_center_insights_assessment_rules" {
  description = <<EOT
Map of contact_center_insights_assessment_rules, attributes below
Required:
    - location
Optional:
    - active
    - assessment_rule_id
    - deletion_policy
    - display_name
    - project
    - sample_rule (block):
        - conversation_filter (optional)
        - dimension (optional)
        - sample_percentage (optional)
        - sample_row (optional)
    - schedule_info (block):
        - end_time (optional)
        - schedule (optional)
        - start_time (optional)
        - time_zone (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location           = string
    active             = optional(bool)
    assessment_rule_id = optional(string)
    deletion_policy    = optional(string)
    display_name       = optional(string)
    project            = optional(string)
    sample_rule = optional(object({
      conversation_filter = optional(string)
      dimension           = optional(string)
      sample_percentage   = optional(number)
      sample_row          = optional(number)
    }))
    schedule_info = optional(object({
      end_time   = optional(string)
      schedule   = optional(string)
      start_time = optional(string)
      time_zone  = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

