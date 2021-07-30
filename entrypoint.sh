#!/bin/sh -l

if [[ -z "$ACCESS_KEY" ]]; then
  echo "ACCESS_KEY is not set"
  exit 1
fi

if [[ -z "$SECRET_KEY" ]]; then
  echo "SECRET_KEY is not set"
  exit 1
fi

if [[ "$5" == "true" ]]; then
  echo "s3cmd put $1 $2 --host=$3 --host-bucket=$4";
else
  s3cmd put $1 $2 --host=$3 --host-bucket=$4 --access_key=${ACCESS_KEY} --secret_key=${SECRET_KEY} ;
fi
echo "::set-output name=return-code::$?"
