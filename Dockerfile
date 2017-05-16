FROM python:2.7

RUN apt-get update && apt-get upgrade -y
RUN git clone https://github.com/Sinar/popit_ng.git /opt/popit_ng
RUN pip install -r /opt/popit_ng/requirements.txt

COPY settings_docker.py /opt/popit_ng/popit_ng
COPY docker-init.sh /opt/popit_ng/

WORKDIR /opt/popit_ng
CMD ["./docker-init.sh"]
EXPOSE 8000
