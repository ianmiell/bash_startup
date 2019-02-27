FROM alpine
RUN apk update && apk add bash vim
RUN rm -f /etc/profile /root/.bashrc /root/.bash_profile /root/.bash_login /root/.profile
ENV BASH_ENV /root/bashenv
ADD etc/bash.bashrc /etc/bash.bashrc
ADD etc/profile /etc/profile
ADD root/bashrc /root/.bashrc
ADD root/profile /root/.profile
ADD root/bash_profile /root/.bash_profile
ADD root/bash_login /root/.bash_login
ADD root/bash_logout /root/.bash_logout
ADD root/ascript /root/ascript
ADD root/bashenv /root/bashenv
ADD crontab.txt /crontab.txt
RUN /usr/bin/crontab /crontab.txt
CMD ["crond","-f","-l","8"]
