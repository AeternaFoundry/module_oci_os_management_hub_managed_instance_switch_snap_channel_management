variable "os_management_hub_managed_instance_switch_snap_channel_managements" {
  description = <<EOT
Map of os_management_hub_managed_instance_switch_snap_channel_managements, attributes below
Required:
    - managed_instance_id
Optional:
    - snap_details (block):
        - channel (optional)
        - name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - work_request_details (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    managed_instance_id = string
    snap_details = optional(object({
      channel = optional(string)
      name    = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    work_request_details = optional(object({
      description  = optional(string)
      display_name = optional(string)
    }))
  }))
}

