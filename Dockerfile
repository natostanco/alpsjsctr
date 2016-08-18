FROM quay.io/natostanco/alppytctr

ENV PH 2.1.1
ENV CA 1.1.3
ENV SL 0.10.0

RUN ./build.sh
