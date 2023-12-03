FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
RUN echo 'root:Cricket1' | /usr/sbin/chpasswd
EXPOSE 22
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
