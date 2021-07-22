FROM ubuntu:20.04
#RUN echo 'password' | /usr/bin/passwd --stdin root
RUN apt update && apt install  iputils-ping  nano tcpdump net-tools openssh-server sudo -y
RUN useradd -rm -d /home/localadmin -s /bin/bash -g root -G sudo -u 1000 localadmin
RUN user='localadmin'
RUN pass='password'
#RUN chpasswd <<<"localadmin:password"
RUN echo 'localadmin:password' | chpasswd
RUN service ssh start
RUN apt-get install -y adduser libfontconfig1
RUN wget https://dl.grafana.com/oss/release/grafana_6.5.0_amd64.deb
RUN dpkg -i grafana_6.5.0_amd64.deb
#RUN service grafana-server start
ENTRYPOINT service grafana-server start && /bin/bash
CMD ["/bin/bash"]
