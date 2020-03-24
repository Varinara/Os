net stop Dnscache

::ping –n 1 localhost > nul
net start > newServices.txt

fc /A services.txt newServices.txt > diffServices.txt

net start Dnscache
