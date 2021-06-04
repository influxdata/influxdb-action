influxd --http-bind-address :8086 --reporting-disabled > /dev/null 2>&1 &
until curl -s http://localhost:8086/health; do sleep 1; done
influx setup --host http://localhost:8086 -f \
  -o ${{ inputs.influxdb_org }} \
  -u ${{ inputs.influxdb_user }} \
  -p ${{ inputs.influxdb_password }} \
  -b ${{ inputs.influxdb_bucket }}