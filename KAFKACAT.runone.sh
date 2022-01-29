#!/bin/sh

#CONSUME GET ALL FIELDS
USERNAME=ds-k8s-logging-user
USERNAME=filebeat-k8s-ece
USERNAME=kafkaadmin
USERNAME=admin
PASSWORD=TArsy8XrhefW3WV8
PASSWORD=asdlkfjeoijEE1234!
PASSWORD="WBxE77qgk46P60(e9"
PASSWORD=ThisIsTheWay
#above is is for kafkacadmin opprd
SECCLAUSE="-X security.protocol=SASL_PLAINTEXT -X sasl.mechanisms=SCRAM-SHA-256 -X sasl.username=$USERNAME -X sasl.password=$PASSWORD"
RUNCOMMAND="sudo docker run -it --rm edenhill/kafkacat:1.6.0 -b $KBK"
FORMAT="-f 'Topic %t Partition [%p] at Offset %o: Timesestamp is: %T Payload size is %S  Key is %k   Message is: %s\n' "
FORMAT="-f 'Topic %t Partition [%p] at Offset %o: Timesestamp is: %T Payload size is %S  \n' "
RUNCOMMAND=$RUNCOMMAND" "$SECCLAUSE

