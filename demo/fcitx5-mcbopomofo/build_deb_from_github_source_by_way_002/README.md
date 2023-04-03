

# fcitx5-mcbopomofo

## Notice

> ISSUE

```
E: fcitx5-mcbopomofo changes: bad-distribution-in-changes-file unstable
```

* [debuild_ubuntu_debian_package](https://gist.github.com/GeoffWilliams/8caefa46476817b68229)

``` sh
debuild -us -uc --lintian-opts --profile debian
```



## Link

* GitHub / openvanilla / [fcitx5-mcbopomofo](https://github.com/openvanilla/fcitx5-mcbopomofo)
* [lintian does not allow overriding bad-distribution-in-changes-file](https://debian-lint-maint.debian.narkive.com/PFXOTumX/bug-575400-lintian-does-not-allow-overriding-bad-distribution-in-changes-file)


## Usage


### help

run

``` sh
make
```

or run

``` sh
make help
```


### prepare

to run [prepare.sh](prepare.sh)

``` sh
make prepare
```


### download

to run [download.sh](download.sh)

``` sh
make download
```


### build

to run [build.sh](build.sh)

``` sh
make build
```


### install

to run [install.sh](install.sh)

``` sh
make install
```


### uninstall

to run [uninstall.sh](uninstall.sh)

``` sh
make uninstall
```


### clean

to run [clean.sh](clean.sh)

``` sh
make clean
```
