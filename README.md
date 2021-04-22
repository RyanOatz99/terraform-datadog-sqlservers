# Datadog sqlservers module

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_datadog"></a> [datadog](#requirement\_datadog) | >= 2.25.0 |

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

No inputs.

## Outputs

No outputs.
