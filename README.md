# Logstash in docker

Just tagged images of logstash for docker, nothing else.
It is build from official java images and official
logstash distribution, you can make you image `FROM` this one.

## Running

For testing you may supply config via cli args:

```
docker run --rm -it bobrik/logstash:1.4.2 -e 'input { stdin { } } output { stdout { codec => rubydebug } }'
```

But to run with custom config you should bind-mount it from host:

```
docker run --rm -it -v /tmp/logstash.conf:/etc/logstash/logstash.conf bobrik/logstash:1.4.2
```

Note that it takes some time for logstash to start up and shut down.
