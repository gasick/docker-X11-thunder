FROM debian:buster-slim
RUN apt-get -y update \
    && apt-get install -y thunderbird \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoremove -y
CMD ["thunderbird"]
