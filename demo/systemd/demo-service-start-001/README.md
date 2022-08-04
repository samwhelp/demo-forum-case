
# Demo Service Start


## File List

* [/usr/local/bin/demo-service-start.sh](demo-service-start.sh)
* [/usr/lib/systemd/system/demo-service-start.service](demo-service-start.service)


## install script

run to install [/usr/local/bin/demo-service-start.sh](demo-service-start.sh)

``` sh
sudo install -Dm755 demo-service-start.sh /usr/local/bin/demo-service-start.sh
```


## instal service

run to install [/usr/lib/systemd/system/demo-service-start.service](demo-service-start.service)

``` sh
sudo install -Dm644 demo-service-start.service /usr/lib/systemd/system/demo-service-start.service
```


## manpage

* man [systemctl](https://manpages.ubuntu.com/manpages/jammy/en/man1/systemctl.1.html)
* man [systemctl](https://manpages.ubuntu.com/manpages/jammy/zh_TW/man1/systemctl.1.html)


## list-unit-files

run

``` sh
systemctl list-unit-files demo-*
```

show

```
UNIT FILE                  STATE    VENDOR PRESET
demo-service-start.service disabled enabled      

1 unit files listed.
```

## cat

run

``` sh
systemctl cat demo-service-start
```

show

```
# /lib/systemd/system/demo-service-start.service
[Unit]
Description=Demo Service Start

[Service]
Type=simple
ExecStart=/usr/local/bin/demo-service-start.sh

[Install]
WantedBy=default.target
```


## status

run

``` sh
systemctl status demo-service-start
```

show

```
○ demo-service-start.service - Demo Service Start
     Loaded: loaded (/lib/systemd/system/demo-service-start.service; disabled; vendor preset: enabled)
     Active: inactive (dead)
```

## start

run

``` sh
sudo systemctl start demo-service-start
```

run

``` sh
systemctl status demo-service-start
```

show

```
○ demo-service-start.service - Demo Service Start
     Loaded: loaded (/lib/systemd/system/demo-service-start.service; disabled; vendor preset: enabled)
     Active: inactive (dead)

Aug 04 11:59:23 sam-anywhere systemd[1]: Started Demo Service Start.
Aug 04 11:59:23 sam-anywhere demo-service-start.sh[12228]: This is demo sevice start message!
Aug 04 11:59:23 sam-anywhere systemd[1]: demo-service-start.service: Deactivated successfully.
```

run

```
grep -i -n 'demo' /var/log/syslog
```

show

```
46210:Aug  4 11:59:23 sam-anywhere systemd[1]: Started Demo Service Start.
46211:Aug  4 11:59:23 sam-anywhere demo-service-start.sh[12228]: This is demo sevice start message!
46212:Aug  4 11:59:23 sam-anywhere systemd[1]: demo-service-start.service: Deactivated successfully.
```


## enable

run

``` sh
sudo systemctl enable demo-service-start
```

show

```
Created symlink /etc/systemd/system/default.target.wants/demo-service-start.service → /lib/systemd/system/demo-service-start.service.
```

run

``` sh
ls -1 /etc/systemd/system/default.target.wants/
```

show

```
demo-service-start.service
```

run

```
file /etc/systemd/system/default.target.wants/demo-service-start.service
```

show

```
/etc/systemd/system/default.target.wants/demo-service-start.service: symbolic link to /lib/systemd/system/demo-service-start.service
```


## wants dir

run

``` sh
ls -d -1 /etc/systemd/system/*wants
```

show

``` sh
/etc/systemd/system/bluetooth.target.wants
/etc/systemd/system/cloud-final.service.wants
/etc/systemd/system/default.target.wants
/etc/systemd/system/display-manager.service.wants
/etc/systemd/system/emergency.target.wants
/etc/systemd/system/final.target.wants
/etc/systemd/system/getty.target.wants
/etc/systemd/system/graphical.target.wants
/etc/systemd/system/multi-user.target.wants
/etc/systemd/system/network-online.target.wants
/etc/systemd/system/network.target.wants
/etc/systemd/system/oem-config.service.wants
/etc/systemd/system/paths.target.wants
/etc/systemd/system/printer.target.wants
/etc/systemd/system/rescue.target.wants
/etc/systemd/system/sleep.target.wants
/etc/systemd/system/sockets.target.wants
/etc/systemd/system/sysinit.target.wants
/etc/systemd/system/timers.target.wants
```
