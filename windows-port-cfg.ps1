netsh int ipv4 show dynamicport tcp
netsh interface ipv4 show excludedportrange protocol=tcp
netsh int ipv4 set dynamicport tcp start=49152 num=16383
netsh int ipv4 set dynamicport udp start=49152 num=16383Y

# netsh int ipv4 add excludedportrange protocol=tcp startport=50051 numberofports=1