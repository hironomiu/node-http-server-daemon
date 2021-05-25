# node-http-server-daemon

Systemd で管理している Redhat ベース(amazon linux2 で確認)での node http-server の daemon 化スクリプト

## setup

```
$ chmod u+x ./initial.sh
$ sudo ./initial.sh
```

## modify

```
$ sudo vi /etc/systemd/system/sample-app.service
$ sudo systemctl daemon-reload
$ sudo systemctl restart sample-app
$ sudo systemctl status sample-app
```
