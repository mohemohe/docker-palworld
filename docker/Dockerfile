FROM ubuntu

ARG STEAM_EULA

ADD start.sh /start.sh

RUN \
  apt-get update && \
  apt-get install -y software-properties-common locales sudo && \
  sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
  locale-gen  && \
  add-apt-repository multiverse && \
  dpkg --add-architecture i386  && \
  apt-get update && \
  yes "${STEAM_EULA}" | apt-get install -y steamcmd && \
  useradd -m palworld && \
  chmod +x /start.sh

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8   

CMD ["/start.sh"]
