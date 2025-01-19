# gentoo overlay repository

## usage

```bash
# install
# layman -o https://raw.githubusercontent.com/ArisQ/gentoo-overlay/master/repositories.xml -f -a arisq-overlay
# use gitlab if you have network issue accessing github
# layman -o https://gitlab.com/ArisQ/gentoo-overlay/-/raw/master/repositories-gitlab.xml -f -a arisq-overlay
sudo eselect repository add arisq-overlay git https://github.com/ArisQ/gentoo-overlay.git

# update
# layman -s arisq-overlay
sudo emaint sync -r arisq-overlay
sudo emege --sync

# add package
emerge --ask app-misc/caps2esc
```

## build custom overlay

[custom ebuild repository](https://wiki.gentoo.org/wiki/Custom_ebuild_repository)

```
layman-overlay-make to produce repositories.xml/arisq.xml
```


## generate manifest

```bash
ebuild obsidian-md-1.4.13.ebuild manifest
```


## Usage

[[https://wiki.gentoo.org/wiki/Eselect/Repository]]

