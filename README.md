# sslh
Docker image exposing sslh (SSH/HTTPS/OpenVPN multiplexer) 

## Quick Start

* Start the SSLH server process, expose port 443

     docker run  -d -p 443:443  amondit/sslh

* You can set environment variables to define the service routing:

- ENV LISTEN_IP 0.0.0.0
- ENV LISTEN_PORT 443
- ENV SSH_HOST localhost
- ENV SSH_PORT 22
- ENV OPENVPN_HOST localhost
- ENV OPENVPN_PORT 1194
- ENV HTTPS_HOST localhost
- ENV HTTPS_PORT 8443
