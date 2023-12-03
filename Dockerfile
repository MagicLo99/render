FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
EXPOSE 22
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
