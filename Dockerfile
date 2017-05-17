FROM nginx

MAINTAINER Mario Kleinsasser "mario.kleinsasser@gmail.com"
MAINTAINER Bernhard Rausch "rausch.bernhard@gmail.com"

COPY border-controller /data/border-controller
RUN chmod 755 /data/border-controller

COPY border-controller-config.tpl /config/border-controller-config.tpl
COPY border-controller.yml /config/border-controller.yml

CMD ["/data/border-controller"]
