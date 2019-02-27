FROM alpine
RUN apk update && apk add bash vim
RUN rm -f /etc/profile /root/.bashrc /root/.bash_profile /root/.bash_login /root/.profile
CMD ["bash"]
