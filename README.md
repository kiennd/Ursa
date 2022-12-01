Script ติดตั้ง URSA Node สำหรับ linux.




```
wget -q -O ursa.sh https://raw.githubusercontent.com/NunoyHaxxana/Ursa/main/ursa.sh && chmod +x ursa.sh && ./ursa.sh
```

Script จะใช้เวลาติดตั้งประมาณหนึ่งนะ เมื่อติดตั้งเสร็จแล้ว จะเป็น logs วื่ง ๆ ประมาณนี้

![image](https://user-images.githubusercontent.com/83507970/205161276-5fad97f8-1cee-4051-99df-69c3575e60fd.png)

หากต้องการออกจากหน้า logs ให้กด ctrl+c


หากต้องการ Stop Node
```
sudo systemctl stop ursa
```



หากต้องการ Start Node
```
sudo systemctl start ursa
```


หากต้องการ Monitor logs
```
sudo journalctl -u ursa -f --no-hostname -o cat
```
