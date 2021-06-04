influxd --http-bind-address :8086 --reporting-disabled > /dev/null 2>&1 &
until curl -s http://localhost:8086/health; do sleep 1; done
influx setup --host http://localhost:8086 -f \
  -o ${{ inputs.influxdb-org }} \
  -u ${{ inputs.influxdb-user }} \
  -p ${{ inputs.influxdb-password }} \
  -b ${{ inputs.influxdb-bucket }}