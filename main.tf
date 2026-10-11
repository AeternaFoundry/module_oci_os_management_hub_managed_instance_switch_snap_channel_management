resource "oci_os_management_hub_managed_instance_switch_snap_channel_management" "os_management_hub_managed_instance_switch_snap_channel_managements" {
  for_each = var.os_management_hub_managed_instance_switch_snap_channel_managements

  managed_instance_id = each.value.managed_instance_id

  dynamic "snap_details" {
    for_each = each.value.snap_details != null ? [each.value.snap_details] : []
    content {
      channel = snap_details.value.channel
      name    = snap_details.value.name
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

  dynamic "work_request_details" {
    for_each = each.value.work_request_details != null ? [each.value.work_request_details] : []
    content {
      description  = work_request_details.value.description
      display_name = work_request_details.value.display_name
    }
  }
}

