# jmeter-std-plugin

Docker build file for [JMeter](http://jmeter.apache.org/) with the [JMeter Plugins standard set](http://jmeter-plugins.org/wiki/StandardSet/).

This image does not start a server.

Intended usage is to run in foreground mode. For example, assuming you have a JMeter test plan `myplan.jmx` and `jmeter.jtl` and `jmeter.properties` files in your local `/tmp/myplan`directory:

`docker run --rm -v /tmp/myplan/:/mnt/jmeter-job -w="/mnt/jmeter-job" nigelcharman/jmeter-std-plugin jmeter -n -t myplan.jmx -l jmeter.jtl -p jmeter.properties`
