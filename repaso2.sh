#modificar a todos los usuarios del sistema la shell por la shell bash siempre y cuando su user ID sea superior a 1000
#!/bin/bash

for i in `cat /etc/passwd | cut -d: -f3,1 | sort -t: -k2 -n | grep .*:[0-9][0-9][0-9][0-9] | cut -d: -f1`
do
#cat /etc/passwd | cut -d: -f3,1 | sort -t: -k2 -n | grep .*:[0-9][0-9][0-9][0-9]
#usu="`cat /etc/passwd | cut -d: -f3,1 | sort -t: -k2 -n | grep .*:[0-9][0-9][0-9][0-9] | cut -d: -f1`"
sudo usermod -s /bin/bash $i
done
