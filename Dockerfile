FROM alpine

RUN apk update ; apk add perl wget perl-json perl-libwww

COPY . /root


RUN cd /root && wget --no-check-certificate https://raw.github.com/MG-RAST/MG-RAST-Tools/master/tools/lib/USAGEPOD.pm

WORKDIR /root
CMD ["/root/shockclient.pl"]