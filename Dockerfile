FROM quay.io/natostanco/alppytctr

ENV PH 2.1.1
ENV CA 1.1.3
ENV SL 0.10.0

COPY ./xvfb-run /usr/local/bin
COPY ./xvfb-run-safe /usr/local/bin
COPY ./build.sh /build.sh

RUN /build.sh



CMD ["sh"]
