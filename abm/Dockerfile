FROM ubuntu:bionic
RUN mkdir /opt/anylogic

RUN apt update && apt install -y libx11-6 libxext6 libxrender1 libgtk2.0-0 \
    libegl1-mesa libssl-dev libenchant1c2a libjavascriptcoregtk-1.0-0 \
    libgl1-mesa-glx libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 \
    libharfbuzz-icu0 libsecret-1-0 libsoup2.4-1 libsqlite3-0 \
    libwebp6 libxslt1.1 libxt6 xdotool
RUN apt update && apt install -y libx11-6 libxext6 libxrender1 libgtk2.0-0 \
    libx11-dev libxkbcommon-dev

COPY anylogic /opt/anylogic
COPY sla.sh /opt/anylogic/sla.sh
RUN chmod +x /opt/anylogic/sla.sh

COPY .AnyLogicPLE /opt/anylogic/.AnyLogicPLE
COPY AnyLogic.desktop /opt/anylogic/AnyLogic.desktop

COPY libicu60_60.2-6ubuntu1_amd64.deb /tmp/libicu60.deb
COPY libwebkitgtk-1.0-0_2.4.11-3ubuntu3_amd64.deb /tmp/libwebgtk.deb
COPY libjavascriptcoregtk-1.0-0_2.4.11-3ubuntu3_amd64.deb /tmp/libjsgtk.deb

RUN dpkg -i /tmp/libicu60.deb && dpkg -i /tmp/libjsgtk.deb && dpkg -i /tmp/libwebgtk.deb 
RUN apt update && apt install -y libegl1-mesa libssl-dev libenchant1c2a
COPY anylogic-ple-8.9.0.linux.x86_64.tgz.bin /opt/anylogic/anylogic.bin
ENV LD_LIBRARY_PATH=/opt/libwebkitgtk-1.0-0/lib:$LD_LIBRARY_PATH

EXPOSE 8080
VOLUME /opt/data
WORKDIR /opt/anylogic

CMD ["/opt/anylogic/sla.sh"]
