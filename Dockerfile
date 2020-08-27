FROM i386/alpine

RUN \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    apk add wqy-zenhei winetricks --update-cache --repository http://mirrors.ustc.edu.cn/alpine/edge/testing --allow-untrusted && \
    apk --update --upgrade add sudo font-adobe-100dpi supervisor xterm net-tools x11vnc xvfb bash fluxbox wine wine_gecko && \
    ln -s /usr/bin/python3 /usr/bin/python

RUN addgroup -S admin && adduser -D -G admin -s /bin/bash admin 
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD noVNC /opt/noVNC
ADD xiaolz /opt/xiaolz

EXPOSE 8080 10429

# Setup environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    TZ=Asia/Shanghai \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768 \
    VNC_PASSWD=xiaolz \
    HTTP_POST_URL=http://172.18.0.1:7980

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
