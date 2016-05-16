# sslh
Docker image exposing sslh (SSH/HTTPS/OpenVPN multiplexer) 

## Quick Start

* Start the SSLH server process, expose port 443


    docker run -d -p 443:443 --name sslh1 amondit/sslh

* You can set environment variables to define the service routing (here with their default values):


     LISTEN_IP 0.0.0.0
     LISTEN_PORT 443
     SSH_HOST localhost
     SSH_PORT 22
     OPENVPN_HOST localhost
     OPENVPN_PORT 1194
     HTTPS_HOST localhost
     HTTPS_PORT 8443

* However if you need to route to other Docker containers, don't forget to link them and then place the instance name in the environment:
 

    docker run -d -p 443:443 --link web1 -e HTTPS_HOST=web1 -e HTTPS_PORT=443  amondit/sslh
    
