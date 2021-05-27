#for i in {1..255} ;do (ping -c 1 192.168.1.$i | grep "bytes from" &) ;done
for ip in $(seq 1 255);do (ping -c 1 192.168.177.$ip | grep "bytes from" | cut -d " " -f 4 | cut -d ":" -f1 &);done
