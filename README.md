# sslh
Docker image exposing sslh (SSH/HTTPS/OpenVPN multiplexer) 

## Quick Start

* Start the SSLH server process, expose port 443

    docker run  -d -p 443:443  amondit/sslh

* You can set environment variables to define the service routing (here with their default values):

     LISTEN_IP 0.0.0.0
     LISTEN_PORT 443
     SSH_HOST localhost
     SSH_PORT 22
     OPENVPN_HOST localhost
     OPENVPN_PORT 1194
     HTTPS_HOST localhost
     HTTPS_PORT 8443
