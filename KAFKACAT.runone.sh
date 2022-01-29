#!/bin/sh

#CONSUME GET ALL FIELDS
USERNAME=admin
PASSWORD=abl;kajsdf
PASSWORD=ThisIsTheWay
#above is is for kafkacadmin opprd
SECCLAUSE="-X security.protocol=SASL_PLAINTEXT -X sasl.mechanisms=SCRAM-SHA-256 -X sasl.username=$USERNAME -X sasl.password=$PASSWORD"
RUNCOMMAND="sudo docker run -it --rm edenhill/kafkacat:1.6.0 -b $KBK"
FORMAT="-f 'Topic %t Partition [%p] at Offset %o: Timesestamp is: %T Payload size is %S  Key is %k   Message is: %s\n' "
FORMAT="-f 'Topic %t Partition [%p] at Offset %o: Timesestamp is: %T Payload size is %S  \n' "
RUNCOMMAND=$RUNCOMMAND" "$SECCLAUSE

