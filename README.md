# jmeter-std-plugin

Docker build file for [JMeter](http://jmeter.apache.org/) with the [JMeter Plugins standard set](http://jmeter-plugins.org/wiki/StandardSet/).

This image does not start a server.

Intended usage is to run an interactive shell, and execute JMeter tests within the shell. For example, 
assuming you have a JMeter test plan in your local `/tmp/myplan/myplan.jmx` folder:

* $ `docker run -i -t -v /tmp/myplan/:/tmp/myplan nigelcharman/jmeter-std-plugin /bin/bash`
* # `cd /tmp/myplan`
* # `jmeter -n -t myplan.jmx -l jmeter.jtl -p jmeter.properties`
