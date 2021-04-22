terraform {
  required_version = ">= 0.13"
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = ">= 2.25.0"
    }
  }
}

resource "datadog_monitor" "sql_servers_dtu_forecast" {
  name  = "[sql_servers service][${var.asset_lbnref}] DTU forecast over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_dtu_forecast == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_dtu_forecast,
    var.notify_sql_servers_dtu_forecast != "" ? var.notify_sql_servers_dtu_forecast : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_dtu_forecast != "" ? var.escalation_message_sql_servers_dtu_forecast : var.escalation_message,
  )

  query = "min(${var.timeframe_sql_servers_dtu_forecast}):(avg:azure.sql_servers.dtu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) >=  ${var.threshold_critical_sql_servers_dtu_forecast}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_dtu_forecast
    critical          = var.threshold_critical_sql_servers_dtu_forecast
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_dtu_forecast
  notify_no_data      = var.notify_no_data_sql_servers_dtu_forecast
  renotify_interval   = 240
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_dtu_forecast",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_dtu_forecast != "" ? var.isprod_sql_servers_dtu_forecast : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_dtu_forecast}",
      "category:${var.category_sql_servers_dtu_forecast}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_sql_servers_dtu_forecast}",
      "irp:${var.irp_sql_servers_dtu_forecast}",
    ],
    var.extra_tags_sql_servers_dtu_forecast,
  )
}

resource "datadog_monitor" "sql_servers_dtu_status" {
  name  = "[sql_servers service][${var.asset_lbnref}] DTU usage over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_dtu_status == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_dtu_status,
    var.notify_sql_servers_dtu_status != "" ? var.notify_sql_servers_dtu_status : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_dtu_status != "" ? var.escalation_message_sql_servers_dtu_status : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_dtu_status}):(avg:azure.sql_servers.dtu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) > ${var.threshold_critical_sql_servers_dtu_status}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_dtu_status
    critical          = var.threshold_critical_sql_servers_dtu_status
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_dtu_status
  notify_no_data      = var.notify_no_data_sql_servers_dtu_status
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_dtu_status",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_dtu_status != "" ? var.isprod_sql_servers_dtu_status : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_dtu_status}",
      "category:${var.category_sql_servers_dtu_status}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_sql_servers_dtu_status}",
      "irp:${var.irp_sql_servers_dtu_status}",
    ],
    var.extra_tags_sql_servers_dtu_status,
  )
}

resource "datadog_monitor" "sql_servers_dwu_forecast" {
  name  = "[sql_servers service][${var.asset_lbnref}] DWU datawarehouse usage forecast over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_dwu_forecast == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_dwu_forecast,
    var.notify_sql_servers_dwu_forecast != "" ? var.notify_sql_servers_dwu_forecast : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_dwu_forecast != "" ? var.escalation_message_sql_servers_dwu_forecast : var.escalation_message,
  )

  query = "min(${var.timeframe_sql_servers_dwu_forecast}):(avg:azure.sql_servers.dwu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) >=  ${var.threshold_critical_sql_servers_dwu_forecast}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_dwu_forecast
    critical          = var.threshold_critical_sql_servers_dwu_forecast
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_dwu_forecast
  notify_no_data      = var.notify_no_data_sql_servers_dwu_forecast
  renotify_interval   = 240
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_dwu_forecast",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_dwu_forecast != "" ? var.isprod_sql_servers_dwu_forecast : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_dwu_forecast}",
      "category:${var.category_sql_servers_dwu_forecast}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_sql_servers_dwu_forecast}",
      "irp:${var.irp_sql_servers_dwu_forecast}",
    ],
    var.extra_tags_sql_servers_dwu_forecast,
  )
}

resource "datadog_monitor" "sql_servers_dwu_usage" {
  name  = "[sql_servers service][${var.asset_lbnref}] DWU datawarehouse usage over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_dwu_usage == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_dwu_usage,
    var.notify_sql_servers_dwu_usage != "" ? var.notify_sql_servers_dwu_usage : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_dwu_usage != "" ? var.escalation_message_sql_servers_dwu_usage : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_dwu_usage}):(avg:azure.sql_servers.dwu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) > ${var.threshold_critical_sql_servers_dwu_usage}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_dwu_usage
    critical          = var.threshold_critical_sql_servers_dwu_usage
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_dwu_usage
  notify_no_data      = var.notify_no_data_sql_servers_dwu_usage
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_dwu_usage",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_dwu_usage != "" ? var.isprod_sql_servers_dwu_usage : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_dwu_usage}",
      "category:${var.category_sql_servers_dwu_usage}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.type_sql_servers_dwu_usage}",
      "irp:${var.irp_sql_servers_dwu_usage}",
    ],
    var.extra_tags_sql_servers_dwu_usage,
  )
}

