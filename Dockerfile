FROM ubuntu-debootstrap:14.04
COPY ./init.sh /tmp/build.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /tmp/build.sh

ADD ./rootfs /

CMD ["/bin/run"]
