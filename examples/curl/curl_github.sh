#!/bin/sh
#
# Communicate with the API using cURL. The draft is downloaded from GitHub.

# GEEKMAIL_APITOKEN= # Your API Token from https://geekmail.app/setup
GEEKMAIL_APITOKEN=${GEEKMAIL_APITOKEN:?You must provide your API Token}


curl -X POST https://geekmail.app/api/1.0/draft/create \
	-H "Content-Type: application/json" \
	-H "Authorization: Bearer $GEEKMAIL_APITOKEN" \
	-d '{
		"githubauth":{
			"repository":"github.com/geekmail/geekmail-examples",
			"secret":"password123"
		},
		"template_path":"templates/example.template",
		"vars":{
			"To":"John Doe <john@example.com>",
			"Name":"John"
		},
		"labels":["GeekMail"]
	}'
echo # curl doesn't produce a newline
