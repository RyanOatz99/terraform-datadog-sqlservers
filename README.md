# Datadog sqlservers module

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | >= 2.25.0 |

## Usage

```hcl
module "datadog_sqlservers" {
  source        = "linkbynet/sqlservers/datadog"
  customer_name = "mycustomer"
  customer_id   = 1234
  asset_lbnref  = 1234
  asset_name    = mysqlservers
}
```

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_monitor.sql_servers_dtu_forecast](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.sql_servers_dtu_status](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.sql_servers_dwu_forecast](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.sql_servers_dwu_usage](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activated_sql_servers_dtu_forecast"></a> [activated\_sql\_servers\_dtu\_forecast](#input\_activated\_sql\_servers\_dtu\_forecast) | If the monitor [sql\_servers\_dtu\_forecast] is activated | `string` | `"true"` | no |
| <a name="input_activated_sql_servers_dtu_status"></a> [activated\_sql\_servers\_dtu\_status](#input\_activated\_sql\_servers\_dtu\_status) | If the monitor [sql\_servers\_dtu\_status] is activated | `string` | `"true"` | no |
| <a name="input_activated_sql_servers_dwu_forecast"></a> [activated\_sql\_servers\_dwu\_forecast](#input\_activated\_sql\_servers\_dwu\_forecast) | If the monitor [sql\_servers\_dwu\_forecast] is activated | `string` | `"true"` | no |
| <a name="input_activated_sql_servers_dwu_usage"></a> [activated\_sql\_servers\_dwu\_usage](#input\_activated\_sql\_servers\_dwu\_usage) | If the monitor [sql\_servers\_dwu\_usage] is activated | `string` | `"true"` | no |
| <a name="input_asset_lbnref"></a> [asset\_lbnref](#input\_asset\_lbnref) | Asset lbnref | `any` | n/a | yes |
| <a name="input_asset_name"></a> [asset\_name](#input\_asset\_name) | Asset name | `any` | n/a | yes |
| <a name="input_category"></a> [category](#input\_category) | Category of the monitors | `string` | `"228"` | no |
| <a name="input_category_sql_servers_dtu_forecast"></a> [category\_sql\_servers\_dtu\_forecast](#input\_category\_sql\_servers\_dtu\_forecast) | Define category for monitor [sql\_servers\_dtu\_forecast] | `string` | `"228"` | no |
| <a name="input_category_sql_servers_dtu_status"></a> [category\_sql\_servers\_dtu\_status](#input\_category\_sql\_servers\_dtu\_status) | Define category for monitor [sql\_servers\_dtu\_status] | `string` | `"228"` | no |
| <a name="input_category_sql_servers_dwu_forecast"></a> [category\_sql\_servers\_dwu\_forecast](#input\_category\_sql\_servers\_dwu\_forecast) | Define category for monitor [sql\_servers\_dwu\_forecast] | `string` | `"228"` | no |
| <a name="input_category_sql_servers_dwu_usage"></a> [category\_sql\_servers\_dwu\_usage](#input\_category\_sql\_servers\_dwu\_usage) | Define category for monitor [sql\_servers\_dwu\_usage] | `string` | `"228"` | no |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | map of custom tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | ID of the client in Idefix | `any` | n/a | yes |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | Client name as in Idefix | `any` | n/a | yes |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | map of default tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_escalation_message"></a> [escalation\_message](#input\_escalation\_message) | Default escalation message | `string` | `""` | no |
| <a name="input_escalation_message_sql_servers_dtu_forecast"></a> [escalation\_message\_sql\_servers\_dtu\_forecast](#input\_escalation\_message\_sql\_servers\_dtu\_forecast) | Escalation message for monitor [sql\_servers\_dtu\_forecast] | `string` | `""` | no |
| <a name="input_escalation_message_sql_servers_dtu_status"></a> [escalation\_message\_sql\_servers\_dtu\_status](#input\_escalation\_message\_sql\_servers\_dtu\_status) | Escalation message for monitor [sql\_servers\_dtu\_status] | `string` | `""` | no |
| <a name="input_escalation_message_sql_servers_dwu_forecast"></a> [escalation\_message\_sql\_servers\_dwu\_forecast](#input\_escalation\_message\_sql\_servers\_dwu\_forecast) | Escalation message for monitor [sql\_servers\_dwu\_forecast] | `string` | `""` | no |
| <a name="input_escalation_message_sql_servers_dwu_usage"></a> [escalation\_message\_sql\_servers\_dwu\_usage](#input\_escalation\_message\_sql\_servers\_dwu\_usage) | Escalation message for monitor [sql\_servers\_dwu\_usage] | `string` | `""` | no |
| <a name="input_evaluation_delay"></a> [evaluation\_delay](#input\_evaluation\_delay) | Delay in seconds for the metric evaluation | `number` | `15` | no |
| <a name="input_extra_tags_sql_servers_dtu_forecast"></a> [extra\_tags\_sql\_servers\_dtu\_forecast](#input\_extra\_tags\_sql\_servers\_dtu\_forecast) | Extra tags for monitor [sql\_servers\_dtu\_forecast] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_sql_servers_dtu_status"></a> [extra\_tags\_sql\_servers\_dtu\_status](#input\_extra\_tags\_sql\_servers\_dtu\_status) | Extra tags for monitor [sql\_servers\_dtu\_status] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_sql_servers_dwu_forecast"></a> [extra\_tags\_sql\_servers\_dwu\_forecast](#input\_extra\_tags\_sql\_servers\_dwu\_forecast) | Extra tags for monitor [sql\_servers\_dwu\_forecast] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_sql_servers_dwu_usage"></a> [extra\_tags\_sql\_servers\_dwu\_usage](#input\_extra\_tags\_sql\_servers\_dwu\_usage) | Extra tags for monitor [sql\_servers\_dwu\_usage] | `list(string)` | `[]` | no |
| <a name="input_include_tags"></a> [include\_tags](#input\_include\_tags) | Include triggered event tags in title | `bool` | `false` | no |
| <a name="input_irp_sql_servers_dtu_forecast"></a> [irp\_sql\_servers\_dtu\_forecast](#input\_irp\_sql\_servers\_dtu\_forecast) | Define the IRP for monitor [sql\_servers\_dtu\_forecast] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9787"` | no |
| <a name="input_irp_sql_servers_dtu_status"></a> [irp\_sql\_servers\_dtu\_status](#input\_irp\_sql\_servers\_dtu\_status) | Define the IRP for monitor [sql\_servers\_dtu\_status] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9787"` | no |
| <a name="input_irp_sql_servers_dwu_forecast"></a> [irp\_sql\_servers\_dwu\_forecast](#input\_irp\_sql\_servers\_dwu\_forecast) | Define the IRP for monitor [sql\_servers\_dwu\_forecast] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9788"` | no |
| <a name="input_irp_sql_servers_dwu_usage"></a> [irp\_sql\_servers\_dwu\_usage](#input\_irp\_sql\_servers\_dwu\_usage) | Define the IRP for monitor [sql\_servers\_dwu\_usage] | `string` | `"https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9714"` | no |
| <a name="input_isprod"></a> [isprod](#input\_isprod) | activate the monitor on production on Sentinel | `string` | `"false"` | no |
| <a name="input_isprod_sql_servers_dtu_forecast"></a> [isprod\_sql\_servers\_dtu\_forecast](#input\_isprod\_sql\_servers\_dtu\_forecast) | Define whether the monitor [sql\_servers\_dtu\_forecast] is in production or not | `string` | `""` | no |
| <a name="input_isprod_sql_servers_dtu_status"></a> [isprod\_sql\_servers\_dtu\_status](#input\_isprod\_sql\_servers\_dtu\_status) | Define whether the monitor [sql\_servers\_dtu\_status] is in production or not | `string` | `""` | no |
| <a name="input_isprod_sql_servers_dwu_forecast"></a> [isprod\_sql\_servers\_dwu\_forecast](#input\_isprod\_sql\_servers\_dwu\_forecast) | Define whether the monitor [sql\_servers\_dwu\_forecast] is in production or not | `string` | `""` | no |
| <a name="input_isprod_sql_servers_dwu_usage"></a> [isprod\_sql\_servers\_dwu\_usage](#input\_isprod\_sql\_servers\_dwu\_usage) | Define whether the monitor [sql\_servers\_dwu\_usage] is in production or not | `string` | `""` | no |
| <a name="input_message_sql_servers_dtu_forecast"></a> [message\_sql\_servers\_dtu\_forecast](#input\_message\_sql\_servers\_dtu\_forecast) | Custom message for monitor [sql\_servers\_dtu\_forecast] | `string` | `"    Verify if DTU forecast for database is above the defined threshold during last check period.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_sql_servers_dtu_status"></a> [message\_sql\_servers\_dtu\_status](#input\_message\_sql\_servers\_dtu\_status) | Custom message for monitor [sql\_servers\_dtu\_status] | `string` | `"    Verify if DTU usage of the database is above the defined threshold during last check period.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_sql_servers_dwu_forecast"></a> [message\_sql\_servers\_dwu\_forecast](#input\_message\_sql\_servers\_dwu\_forecast) | Custom message for monitor [sql\_servers\_dwu\_forecast] | `string` | `"    Verify if DWU (for Datawarehouse) usage is above the defined threshold during last check period.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_sql_servers_dwu_usage"></a> [message\_sql\_servers\_dwu\_usage](#input\_message\_sql\_servers\_dwu\_usage) | Custom message for monitor [sql\_servers\_dwu\_usage] | `string` | `"    Verify if DWU datawarehouse usage is above the defined threshold during last check period.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_new_host_delay"></a> [new\_host\_delay](#input\_new\_host\_delay) | Delay in seconds before monitor new resource | `number` | `300` | no |
| <a name="input_no_data_timeframe_sql_servers_dtu_forecast"></a> [no\_data\_timeframe\_sql\_servers\_dtu\_forecast](#input\_no\_data\_timeframe\_sql\_servers\_dtu\_forecast) | No data timeframe in minutes for monitor [sql\_servers\_dtu\_forecast] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_sql_servers_dtu_status"></a> [no\_data\_timeframe\_sql\_servers\_dtu\_status](#input\_no\_data\_timeframe\_sql\_servers\_dtu\_status) | No data timeframe in minutes for monitor [sql\_servers\_dtu\_status] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_sql_servers_dwu_forecast"></a> [no\_data\_timeframe\_sql\_servers\_dwu\_forecast](#input\_no\_data\_timeframe\_sql\_servers\_dwu\_forecast) | No data timeframe in minutes for monitor [sql\_servers\_dwu\_forecast] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_sql_servers_dwu_usage"></a> [no\_data\_timeframe\_sql\_servers\_dwu\_usage](#input\_no\_data\_timeframe\_sql\_servers\_dwu\_usage) | No data timeframe in minutes for monitor [sql\_servers\_dwu\_usage] | `number` | `1440` | no |
| <a name="input_notify_capacity"></a> [notify\_capacity](#input\_notify\_capacity) | to who notify capacity alerts | `string` | `""` | no |
| <a name="input_notify_no_data_sql_servers_dtu_forecast"></a> [notify\_no\_data\_sql\_servers\_dtu\_forecast](#input\_notify\_no\_data\_sql\_servers\_dtu\_forecast) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_sql_servers_dtu_status"></a> [notify\_no\_data\_sql\_servers\_dtu\_status](#input\_notify\_no\_data\_sql\_servers\_dtu\_status) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_notify_no_data_sql_servers_dwu_forecast"></a> [notify\_no\_data\_sql\_servers\_dwu\_forecast](#input\_notify\_no\_data\_sql\_servers\_dwu\_forecast) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_sql_servers_dwu_usage"></a> [notify\_no\_data\_sql\_servers\_dwu\_usage](#input\_notify\_no\_data\_sql\_servers\_dwu\_usage) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_sql_servers_dtu_forecast"></a> [notify\_sql\_servers\_dtu\_forecast](#input\_notify\_sql\_servers\_dtu\_forecast) | Define notification hooks for monitor [notify\_sql\_servers\_dtu\_forecast] | `string` | `""` | no |
| <a name="input_notify_sql_servers_dtu_status"></a> [notify\_sql\_servers\_dtu\_status](#input\_notify\_sql\_servers\_dtu\_status) | Define notification hooks for monitor [notify\_sql\_servers\_dtu\_status] | `string` | `""` | no |
| <a name="input_notify_sql_servers_dwu_forecast"></a> [notify\_sql\_servers\_dwu\_forecast](#input\_notify\_sql\_servers\_dwu\_forecast) | Define notification hooks for monitor [notify\_sql\_servers\_dwu\_forecast] | `string` | `""` | no |
| <a name="input_notify_sql_servers_dwu_usage"></a> [notify\_sql\_servers\_dwu\_usage](#input\_notify\_sql\_servers\_dwu\_usage) | Define notification hooks for monitor [notify\_sql\_servers\_dwu\_usage] | `string` | `""` | no |
| <a name="input_notify_to"></a> [notify\_to](#input\_notify\_to) | Define notification hooks | `string` | `"@webhook-SGCProd @monitoring-teams"` | no |
| <a name="input_renotify_interval"></a> [renotify\_interval](#input\_renotify\_interval) | Delay in minutes before monitor is renotified | `number` | `40` | no |
| <a name="input_severity_sql_servers_dtu_forecast"></a> [severity\_sql\_servers\_dtu\_forecast](#input\_severity\_sql\_servers\_dtu\_forecast) | Define severity for monitor [sql\_servers\_dtu\_forecast] | `string` | `"3"` | no |
| <a name="input_severity_sql_servers_dtu_status"></a> [severity\_sql\_servers\_dtu\_status](#input\_severity\_sql\_servers\_dtu\_status) | Define severity for monitor [sql\_servers\_dtu\_status] | `string` | `"3"` | no |
| <a name="input_severity_sql_servers_dwu_forecast"></a> [severity\_sql\_servers\_dwu\_forecast](#input\_severity\_sql\_servers\_dwu\_forecast) | Define severity for monitor [sql\_servers\_dwu\_forecast] | `string` | `"3"` | no |
| <a name="input_severity_sql_servers_dwu_usage"></a> [severity\_sql\_servers\_dwu\_usage](#input\_severity\_sql\_servers\_dwu\_usage) | Define severity for monitor [sql\_servers\_dwu\_usage] | `string` | `"3"` | no |
| <a name="input_team_in_charge"></a> [team\_in\_charge](#input\_team\_in\_charge) | Define the team in charge | `string` | `"Undefined"` | no |
| <a name="input_template"></a> [template](#input\_template) | Template name | `string` | `"azure-sql_servers"` | no |
| <a name="input_threshold_critical_recovery_sql_servers_dtu_forecast"></a> [threshold\_critical\_recovery\_sql\_servers\_dtu\_forecast](#input\_threshold\_critical\_recovery\_sql\_servers\_dtu\_forecast) | Monitor [sql\_servers\_dtu\_forecast] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_recovery_sql_servers_dtu_status"></a> [threshold\_critical\_recovery\_sql\_servers\_dtu\_status](#input\_threshold\_critical\_recovery\_sql\_servers\_dtu\_status) | Monitor [sql\_servers\_dtu\_status] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_recovery_sql_servers_dwu_forecast"></a> [threshold\_critical\_recovery\_sql\_servers\_dwu\_forecast](#input\_threshold\_critical\_recovery\_sql\_servers\_dwu\_forecast) | Monitor [sql\_servers\_dwu\_forecast] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_recovery_sql_servers_dwu_usage"></a> [threshold\_critical\_recovery\_sql\_servers\_dwu\_usage](#input\_threshold\_critical\_recovery\_sql\_servers\_dwu\_usage) | Monitor [sql\_servers\_dwu\_usage] critical recovery threshold | `string` | `"95"` | no |
| <a name="input_threshold_critical_sql_servers_dtu_forecast"></a> [threshold\_critical\_sql\_servers\_dtu\_forecast](#input\_threshold\_critical\_sql\_servers\_dtu\_forecast) | Monitor [sql\_servers\_dtu\_forecast] critical threshold | `string` | `"99"` | no |
| <a name="input_threshold_critical_sql_servers_dtu_status"></a> [threshold\_critical\_sql\_servers\_dtu\_status](#input\_threshold\_critical\_sql\_servers\_dtu\_status) | Monitor [sql\_servers\_dtu\_status] critical threshold | `string` | `"99"` | no |
| <a name="input_threshold_critical_sql_servers_dwu_forecast"></a> [threshold\_critical\_sql\_servers\_dwu\_forecast](#input\_threshold\_critical\_sql\_servers\_dwu\_forecast) | Monitor [sql\_servers\_dwu\_forecast] critical threshold | `string` | `"99"` | no |
| <a name="input_threshold_critical_sql_servers_dwu_usage"></a> [threshold\_critical\_sql\_servers\_dwu\_usage](#input\_threshold\_critical\_sql\_servers\_dwu\_usage) | Monitor [sql\_servers\_dwu\_usage] critical threshold | `string` | `"96"` | no |
| <a name="input_timeframe_sql_servers_dtu_forecast"></a> [timeframe\_sql\_servers\_dtu\_forecast](#input\_timeframe\_sql\_servers\_dtu\_forecast) | Monitor timeframe for monitor [sql\_servers\_dtu\_forecast] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_30m"` | no |
| <a name="input_timeframe_sql_servers_dtu_status"></a> [timeframe\_sql\_servers\_dtu\_status](#input\_timeframe\_sql\_servers\_dtu\_status) | Monitor timeframe for monitor [sql\_servers\_dtu\_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_30m"` | no |
| <a name="input_timeframe_sql_servers_dwu_forecast"></a> [timeframe\_sql\_servers\_dwu\_forecast](#input\_timeframe\_sql\_servers\_dwu\_forecast) | Monitor timeframe for monitor [sql\_servers\_dwu\_forecast] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_30m"` | no |
| <a name="input_timeframe_sql_servers_dwu_usage"></a> [timeframe\_sql\_servers\_dwu\_usage](#input\_timeframe\_sql\_servers\_dwu\_usage) | Monitor timeframe for monitor [sql\_servers\_dwu\_usage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_30m"` | no |
| <a name="input_type_sql_servers_dtu_forecast"></a> [type\_sql\_servers\_dtu\_forecast](#input\_type\_sql\_servers\_dtu\_forecast) | Type for monitor [sql\_servers\_dtu\_forecast] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_sql_servers_dtu_status"></a> [type\_sql\_servers\_dtu\_status](#input\_type\_sql\_servers\_dtu\_status) | Type for monitor [sql\_servers\_dtu\_status] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_sql_servers_dwu_forecast"></a> [type\_sql\_servers\_dwu\_forecast](#input\_type\_sql\_servers\_dwu\_forecast) | Type for monitor [sql\_servers\_dwu\_forecast] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_sql_servers_dwu_usage"></a> [type\_sql\_servers\_dwu\_usage](#input\_type\_sql\_servers\_dwu\_usage) | Type for monitor [sql\_servers\_dwu\_usage] among incident, information | `string` | `"incident"` | no |

## Outputs

No outputs.
