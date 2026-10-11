output "os_management_hub_managed_instance_switch_snap_channel_managements_id" {
  description = "Map of id values across all os_management_hub_managed_instance_switch_snap_channel_managements, keyed the same as var.os_management_hub_managed_instance_switch_snap_channel_managements except keys with no id are omitted"
  value       = { for k, v in oci_os_management_hub_managed_instance_switch_snap_channel_management.os_management_hub_managed_instance_switch_snap_channel_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_management_hub_managed_instance_switch_snap_channel_managements_managed_instance_id" {
  description = "Map of managed_instance_id values across all os_management_hub_managed_instance_switch_snap_channel_managements, keyed the same as var.os_management_hub_managed_instance_switch_snap_channel_managements except keys with no managed_instance_id are omitted"
  value       = { for k, v in oci_os_management_hub_managed_instance_switch_snap_channel_management.os_management_hub_managed_instance_switch_snap_channel_managements : k => v.managed_instance_id if v.managed_instance_id != null && length(v.managed_instance_id) > 0 }
}
output "os_management_hub_managed_instance_switch_snap_channel_managements_snap_details" {
  description = "Map of snap_details values across all os_management_hub_managed_instance_switch_snap_channel_managements, keyed the same as var.os_management_hub_managed_instance_switch_snap_channel_managements except keys with no snap_details are omitted"
  value       = { for k, v in oci_os_management_hub_managed_instance_switch_snap_channel_management.os_management_hub_managed_instance_switch_snap_channel_managements : k => one(v.snap_details) if v.snap_details != null && length(v.snap_details) > 0 }
}
output "os_management_hub_managed_instance_switch_snap_channel_managements_work_request_details" {
  description = "Map of work_request_details values across all os_management_hub_managed_instance_switch_snap_channel_managements, keyed the same as var.os_management_hub_managed_instance_switch_snap_channel_managements except keys with no work_request_details are omitted"
  value       = { for k, v in oci_os_management_hub_managed_instance_switch_snap_channel_management.os_management_hub_managed_instance_switch_snap_channel_managements : k => one(v.work_request_details) if v.work_request_details != null && length(v.work_request_details) > 0 }
}

