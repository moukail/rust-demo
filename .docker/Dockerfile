FROM alpine:3.20

RUN apk --update --no-cache add gcc bash curl

## Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
## Or 
#RUN apk --update --no-cache add rustup
#RUN rustup-init -y

WORKDIR /var/www

ADD docker-init.sh /home/
RUN chmod +x /home/docker-init.sh
CMD bash /home/docker-init.sh
