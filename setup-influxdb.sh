influxd --http-bind-address :8086 --reporting-disabled > /dev/null 2>&1 &
until curl -s http://localhost:8086/health; do sleep 1; done
influx setup --host http://localhost:8086 -f \
  -o $INPUT_INFLUXDB_ORG \
  -u $INPUT_INFLUXDB_USER \
  -p $INPUT_INFLUXDB_PASSWORD \
  -b $INPUT_INFLUXDB_BUCKET