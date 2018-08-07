#!/bin/bash

curl "http://localhost:4741/doctors" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
