

# fcitx5-table-extra-each


## Link

* 「[#41](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364426#forumpost364426)」 - Ubuntu與嘸蝦米: 在fcitx下，(boshiamy)嘸蝦米的使用最為順暢、穩定!（新酷音、m17n、倉頡、輕鬆法亦適用）


## Demo

| Demo | Post
| --- | --- |
| fcitx5-table-boshiamy / [start](https://github.com/samwhelp/demo-forum-case/tree/main/demo/fcitx5-table-extra-each/fcitx5-table-boshiamy/start) | [#42](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364428#forumpost364428) |
| fcitx5-table-easy-large / [start](https://github.com/samwhelp/demo-forum-case/tree/main/demo/fcitx5-table-extra-each/fcitx5-table-easy-large/start) | [#43](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364430#forumpost364430) |



## Icon


### basic skill

* [套件操作實務](http://samwhelp.github.io/book-ubuntu-qna/read/subject/package/)


### fcitx5-chewing

run

```
dpkg -L fcitx5-chewing  | grep icon
```

show

```
/usr/share/icons
/usr/share/icons/hicolor
/usr/share/icons/hicolor/48x48
/usr/share/icons/hicolor/48x48/apps
/usr/share/icons/hicolor/48x48/apps/org.fcitx.Fcitx5.fcitx-chewing.png
/usr/share/icons/hicolor/48x48/apps/fcitx-chewing.png
```

### hicolor-icon-theme

run

``` sh
dpkg-query --control-path hicolor-icon-theme
```

or run

``` sh
dpkg-query -c hicolor-icon-theme
```

show

```
/var/lib/dpkg/info/hicolor-icon-theme.postinst
/var/lib/dpkg/info/hicolor-icon-theme.prerm
/var/lib/dpkg/info/hicolor-icon-theme.triggers
/var/lib/dpkg/info/hicolor-icon-theme.md5sums
```

run

``` sh
ls /var/lib/dpkg/info/hicolor-icon-theme.*
```

show

```
/var/lib/dpkg/info/hicolor-icon-theme.list
/var/lib/dpkg/info/hicolor-icon-theme.md5sums
/var/lib/dpkg/info/hicolor-icon-theme.postinst
/var/lib/dpkg/info/hicolor-icon-theme.prerm
/var/lib/dpkg/info/hicolor-icon-theme.triggers
```

### hicolor-icon-theme.triggers

run

``` sh
cat /var/lib/dpkg/info/hicolor-icon-theme.triggers
```

show

```
interest-noawait /usr/share/icons/hicolor
```

### hicolor-icon-theme.postinst

run

``` sh
cat /var/lib/dpkg/info/hicolor-icon-theme.postinst
```

show

``` sh
#! /bin/sh
set -e

UPDATE_CACHE=
if which gtk-update-icon-cache-3.0 >/dev/null 2>&1 ; then
    UPDATE_CACHE=gtk-update-icon-cache-3.0
elif which gtk-update-icon-cache >/dev/null 2>&1 ; then
    UPDATE_CACHE=gtk-update-icon-cache
fi

if [ -n "$UPDATE_CACHE" ]; then
    if ! "$UPDATE_CACHE" --force --quiet /usr/share/icons/hicolor; then
        echo "WARNING: icon cache generation failed"
    fi
fi

if [ "$1" = "triggered" ]; then
    exit 0
fi
```

### hicolor-icon-theme.prerm

run

``` sh
cat /var/lib/dpkg/info/hicolor-icon-theme.prerm
```

show

``` sh
#! /bin/sh
set -e

if [ "$1" = "remove" ] || [ "$1" = "deconfigure" ] ; then
  rm -f /usr/share/icons/hicolor/icon-theme.cache
fi

```

### command

``` sh
sudo gtk-update-icon-cache --force --quiet /usr/share/icons/hicolor
```

``` sh
sudo rm -f /usr/share/icons/hicolor/icon-theme.cache
```
