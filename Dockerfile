FROM alpine
RUN apk update && apk add bash vim
RUN rm -f /etc/profile /root/.bashrc /root/.bash_profile /root/.bash_login /root/.profile
ADD etc/profile /etc/profile
ADD root/bashrc /root/.bashrc
ADD root/profile /root/.profile
ADD root/bash_profile /root/.bash_profile
ADD root/bash_login /root/.bash_login
ADD root/ascript /root/ascript
ADD crontab.txt /crontab.txt
ADD root/bashenv /root/bashenv
ENV BASH_ENV /root/bashenv
RUN /usr/bin/crontab /crontab.txt
CMD ["crond","-f","-l","8"]
