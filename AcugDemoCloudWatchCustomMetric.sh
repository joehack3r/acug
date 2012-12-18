#!/bin/bash
#Hack. mon-put-data does not appear to be getting credentials automatically from IAM Role, so using a specific IAM User.
export AWS_CREDENTIAL_FILE=/home/ec2-user/aws-credentials-cloudwatch
export AWS_CLOUDWATCH_HOME=/opt/aws/apitools/mon
export AWS_CLOUDWATCH_URL=https://monitoring.us-east-1.amazonaws.com
export PATH=$PATH:$AWS_CLOUDWATCH_HOME/bin
export JAVA_HOME=/usr/lib/jvm/jre

NUMBER3_10=$[ ( $RANDOM % 8 ) + 3 ]

/opt/aws/bin/mon-put-data --namespace "AcugDemoNS" --metric-name AcugDemoMetric --unit Count --value $NUMBER3_10
