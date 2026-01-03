#!/bin/bash
echo "configurando sqs"

awslocal sqs create-queue --queue-name my-queue --attributes MessageRetentionPeriod=86400 --region us-east-1