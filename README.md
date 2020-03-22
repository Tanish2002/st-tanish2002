# Changes

+ **added live-reload patch** to reload colors and font on the fly, need to do (`$ sudo stmessage st`) Credit:[PaxPlay](https://github.com/PaxPlay/st/commit/de7ab87871fdd861b1f0a83899dca6402212c7b4)
+ **added boxdraw patch** to make lines gapless
+ **Removed Shift-Mouse Wheel** now just scroll wheel scrolls 5 lines at a time
+ **changed cursor's color and shape** to make it stand out more
+ **added color16 and color17 support** because someone asked for it


## Installation 

```
$ git clone https://gitlab.com/Tanish2002/st-tanish2002.git
$ cd st
$ sudo make install
```

## More Info
+ **For live Reloading you need stmessage, you can find it in [bin](https://gitlab.com/Tanish2002/dot-files/-/blob/master/bin/bin/stmessage) folder or [build it yourself](https://gitlab.com/Tanish2002/stmessage-tanish2002)** (I recommend building it yourself)
+ **All the applied patches are available in [patches Folder](patches)** if anyone wants to remove a patch they can find the patch there...
+ **For emoji support use this [patch](https://gitlab.freedesktop.org/xorg/lib/libxft/merge_requests/1.patch) on LibXft and recompile it** Credit: Maxime Coste
Enjoy!
