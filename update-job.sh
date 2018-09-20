#! /bin/bash
# updates configuration for a Jenkins job
# Usage:
#   ./update-job.sh my-job-name

source auth.sh

CRUMB=$(curl -s "http://$USER:$TOKEN@localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,\":\",//crumb)")

curl -X POST -H "$CRUMB" -H "Content-Type: application/xml" "http://$USER:$TOKEN@localhost:8080//job/$1/config.xml" --data @jobs/configs/job1-config.xml
