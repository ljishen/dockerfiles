FROM dorowu/ubuntu-desktop-lxde-vnc
LABEL maintainer="Jianshen Liu <jliu120@ucsc.edu>"
ENV REFRESHED_AT 2019-06-18

ARG VERSION=1.19.4
ARG FILENAME=mendeleydesktop_${VERSION}-stable_amd64.deb
ADD https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/${FILENAME} .

RUN apt install ./"${FILENAME}" && rm "${FILENAME}"

## Clean Up
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# allow to add startup programs
RUN sed -i '/openbox/ s/$/ --startup \/etc\/xdg\/openbox\/autostart/' /etc/supervisor/conf.d/supervisord.conf

# add startup program
RUN echo "mendeleydesktop &" >> /etc/xdg/openbox/autostart
