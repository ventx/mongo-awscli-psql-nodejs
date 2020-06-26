FROM alpine:3.9

RUN apk --update --no-cache add \
  libc6-compat \
  git \
  jq \
  openssh-client \
  python3 \
  mongodb \
  mongodb-tools \
  postgresql-client \
  nodejs \
  npm \
  curl \
  bash && pip3 install awscli

WORKDIR /root

CMD ["/bin/bash"]
