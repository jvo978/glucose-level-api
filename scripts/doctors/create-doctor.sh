#!/bin/bash

curl "http://localhost:4741/doctors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "doctor": {
      "name": "'"${NAME}"'",
      "specialty": "'"${SPECIALTY}"'",
      "hospital": "'"${HOSPITAL}"'",
      "location": "'"${LOCATION}"'"
    }
  }'

echo
