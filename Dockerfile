FROM ubuntu:22.04

#  安裝Shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
# 設置 root, 用戶密碼
RUN echo 'root:Cricket1' | chpasswd

EXPOSE 22

# 啟動 Shellinabox
CMD ["/usr/bin/shellinabox", "-t", "-s", "/:LOGIN"]
