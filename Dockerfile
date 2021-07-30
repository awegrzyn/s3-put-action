FROM python:3.9-alpine

ENV S3CMD_VERSION='2.1.0'
RUN pip install --quiet --no-cache-dir s3cmd==${S3CMD_VERSION}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
