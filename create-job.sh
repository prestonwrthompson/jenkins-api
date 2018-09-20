#! /bin/bash
# creates a new Jenkins job
# Usage:
#   ./create-job.sh my-job-name

source auth.sh

CRUMB=$(curl -s "http://$USER:$TOKEN@localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,\":\",//crumb)")

curl -X POST -H "$CRUMB" -H "Content-Type: application/xml" "http://$USER:$TOKEN@localhost:8080//createItem?name=$1" --data @jobs/configs/job1-config.xml
