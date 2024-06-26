#!/bin/bash

SUBJECT=$1
BODY=$2

curl -X POST \
  https://api.github.com/repos/${REPO_GITHUB}/actions/send-email \
  -H 'Authorization: Bearer ${{ secrets.GITHUB_TOKEN }}' \
  -H 'Content-Type: application/json' \
  -d '{"to": "${EMAIL_TO}", "subject": "'"$SUBJECT"'", "body": "'"$BODY"'"}'