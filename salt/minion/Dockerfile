FROM ubuntu:14.04
MAINTAINER Paul Chiu

ADD bootstrap.sh /tmp/bootstrap/
ADD install /tmp/bootstrap/install/

RUN ["/tmp/bootstrap/bootstrap.sh"]

CMD ["bash"]
