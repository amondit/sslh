FROM ubuntu:14.04
MAINTAINER Arnaud Mondit <github.com/amondit>
RUN apt-get update -qq && apt-get -y install sslh
CMD sslh -f -u root -p 0.0.0.0:443 --ssh 172.17.42.1:22 --ssl 172.17.42.1:10443
EXPOSE 443
