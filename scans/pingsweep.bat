for /L %i in (1,1,255) do @ping -n 1 -w 200 172.16.2.%i > nul && echo 192.168.1.%i is up.
