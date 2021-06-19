# interception-tools

Note: uinput kernel config should be configured. [ref](https://forums.gentoo.org/viewtopic-p-4230134.html#4230134)

`CONFIG_INPUT_UINPUT=m`

In menuconfig:
User level driver support
under:
-> Device Drivers
-> Input device support
-> Generic input layer
-> Miscellaneous devices

Otherwise, `libevdev_uinput_create_from_device failed: No such file or directory` error will occur.


## install

```shell
# config from plugin is required. (e.g. caps2esc)
# see upstream for more information.
# emerge --ask app-misc/interception-tools
emerge --ask app-misc/caps2esc

# add to startup
rc-update add interception-tools

# start manually
rc-service interception-tools start

# see start status
rc-service interception-tools status
```

