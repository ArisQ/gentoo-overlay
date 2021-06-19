# gentoo overlay repository

## usage

```shell
# install
layman -o https://raw.githubusercontent.com/ArisQ/gentoo-overlay/master/repositories.xml -f -a arisq-overlay
# use gitlab if you have network issue accessing github
# layman -o https://gitlab.com/ArisQ/gentoo-overlay/-/raw/master/repositories-gitlab.xml -f -a arisq-overlay

# update
layman -s arisq-overlay

# add package
emerge --ask app-misc/caps2esc
```

## build custom overlay

[custom ebuild repository](https://wiki.gentoo.org/wiki/Custom_ebuild_repository)

```
layman-overlay-make to produce repositories.xml/arisq.xml
```

