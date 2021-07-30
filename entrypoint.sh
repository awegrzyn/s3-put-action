#!/bin/sh -l

if [[ -z "$ACCESS_KEY" ]]; then
  echo "ACCESS_KEY is not set"
  exit 1
fi

if [[ -z "$SECRET_KEY" ]]; then
  echo "SECRET_KEY is not set"
  exit 1
fi

if [[ "$INPUT_DRY_RUN" == "1" ]]; then
  echo "s3cmd put $INPUT_FILE $INPUT_BUCKET --host=$INPUT_HOST --host-bucket=$INPUT_HOST_BUCKET";
else
  s3cmd put $1 $2 --host=$3 --host-bucket=$4 --access_key=${ACCESS_KEY} --secret_key=${SECRET_KEY} ;
fi
echo "::set-output name=return-code::$?"
