FROM python:2.7-alpine

# Get project source
RUN apk add --no-cache --virtual .get-deps git && \
    git clone https://github.com/Sinar/popit_ng.git /opt/popit_ng && \
    apk del .get-deps

# Install requirements
RUN apk add --no-cache --virtual .build-deps gcc libc-dev postgresql-dev && \
    pip install -r /opt/popit_ng/requirements.txt && \
    apk del .build-deps && \
    apk add --no-cache --virtual libpq

COPY settings_docker.py /opt/popit_ng/popit_ng
COPY docker-init.sh /opt/popit_ng/

WORKDIR /opt/popit_ng
CMD ["./docker-init.sh"]
EXPOSE 8000
