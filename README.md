```
wget -q -O ursa.sh https://raw.githubusercontent.com/kiennd/Ursa/main/ursa.sh && chmod +x ursa.sh && ./ursa.sh
```

Script 

![image](https://user-images.githubusercontent.com/83507970/205161276-5fad97f8-1cee-4051-99df-69c3575e60fd.png)


Stop Node
```
sudo systemctl stop ursa
```


Start Node
```
sudo systemctl start ursa
```

Monitor logs
```
sudo journalctl -u ursa -f --no-hostname -o cat
```
