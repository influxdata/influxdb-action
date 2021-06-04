cd /tmp
wget -q https://dl.influxdata.com/platform/nightlies/influxdb2-nightly-linux-amd64.tar.gz
tar xvfz influxdb2-nightly-linux-amd64.tar.gz
sudo cp influxdb2-nightly-linux-amd64/{influx,influxd} /usr/local/bin/
rm -r influxdb2-nightly-linux-amd64/
cd -