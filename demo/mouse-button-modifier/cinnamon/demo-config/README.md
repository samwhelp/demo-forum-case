

# mouse-button-modifier / cinnamon


## Link

* note-about-menu-applet / demo-mouse-button-modifier / [mouse-button-modifier.sh](https://github.com/samwhelp/note-about-menu-applet/blob/gh-pages/_demo/prototype/menu-applet/demo-application/demo-mouse-button-modifier/mouse-button-modifier.sh)


## mouse-button-modifier

### win

run [win.sh](win.sh)

``` sh
./win.sh
```

or run

``` sh
make win
```


### alt

run [alt.sh](alt.sh)

``` sh
./alt.sh
```

or run

``` sh
make alt
```


### reset

run [reset.sh](reset.sh)

``` sh
./reset.sh
```

or run

``` sh
make reset
```


## default value

```
org.cinnamon.desktop.wm.preferences resize-with-right-button true
org.cinnamon.desktop.wm.preferences mouse-button-modifier '<Alt>'
org.cinnamon.desktop.wm.preferences mouse-button-zoom-modifier '<Alt>'
```

run

``` sh
grep Super_L ~/.config/cinnamon/* -R
```

show

```
/home/user/.config/cinnamon/spices/menu@cinnamon.org/0.json:        "default": "Super_L::Super_R",
```

