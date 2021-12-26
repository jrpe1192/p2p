FROM debian:buster-slim
RUN cd /tmp && \
apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y && \
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb && \
dpkg -i /tmp/uam-latest_amd64.deb
CMD /opt/uam/uam --pk 701C82D1EC49C69985F7419E5EF8287FE28427244B6774A3178BBFD340C2CA57 --no-ui
