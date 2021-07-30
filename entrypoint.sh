#!/bin/sh -l

if [[ -z "$ACCESS_KEY" ]]; then
  echo "ACCESS_KEY is not set"
  exit 1
fi

if [[ -z "$SECRET_KEY" ]]; then
  echo "SECRET_KEY is not set"
  exit 1
fi

s3cmd put ${INPUT_FILE} ${INPUT_BUCKET} --host=${INPUT_HOST} --host-bucket=${INPUT_HOST_BUCKET} --access_key=${ACCESS_KEY} --secret_key=${SECRET_KEY}

echo "::set-output name=return-code::$?"
