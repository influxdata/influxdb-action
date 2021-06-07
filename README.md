# InfluxDB Action

This action downloads, installs, and configures an InfluxDB OSS instance and CLI tooling that can be used in your automation.

This downloads the latest nightly, and add `influxd` and `influx` commands to `/usr/local/bin`.

# Usage

See [action.yml](action.yml)

### Setup and Configure InfluxDB
```yaml
steps:
  - name: Check out repo
    uses: actions/checkout@v2
  - name: Setup InfluxDB
    uses: russorat/influxdb-action@0.0.6
    with:
      influxdb_org: influxdata
      influxdb_user: ci_user
      influxdb_password: password
      influxdb_bucket: dummy
```

