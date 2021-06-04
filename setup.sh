cd /tmp
wget https://dl.influxdata.com/platform/nightlies/influx_nightly_linux_amd64.tar.gz
tar xvfz influx_nightly_linux_amd64.tar.gz
sudo cp influx_nightly_linux_amd64/{influx,influxd} /usr/local/bin/
influxd --http-bind-address :8086 --reporting-disabled > /dev/null 2>&1 &
until curl -s http://localhost:8086/health; do sleep 1; done
influx setup --host http://localhost:8086 -f -b dummy -o influxdata -u ci_user -p password
cd ~