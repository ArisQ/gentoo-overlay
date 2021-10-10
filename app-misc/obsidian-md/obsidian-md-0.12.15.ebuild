# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker xdg

DESCRIPTION="Obsidian markdown"

HOMEPAGE="https://obsidian.md"
KEYWORDS="-* ~amd64"

SRC_URI="https://github.com/obsidianmd/obsidian-releases/releases/download/v${PV}/obsidian_${PV}_amd64.deb"
S="${WORKDIR}"

LICENSE=""
SLOT="0"

# libgtk-3-0 libnotify4 libnss3 libxss1 libxtst6 xdg-utils libatspi2.0-0 libuuid1 libappindicator3-1 libsecret-1-0
DEPEND="
x11-libs/gtk+
x11-libs/libnotify
dev-libs/nss
x11-libs/libXScrnSaver
x11-libs/libXtst
x11-misc/xdg-utils
app-accessibility/at-spi2-core
sys-apps/util-linux
dev-libs/libappindicator
app-crypt/libsecret
"
# sys-apps/util-linux # sys-libs/libuuid

RDEPEND="${DEPEND}"
BDEPEND=""

# QA_PREBUILT="*"
#QA_DESKTOP_FILE="usr/share/applications/obsidian\\.desktop"

src_unpack() {
	:
}

src_install() {
	dodir /
	cd "${ED}"
	unpacker

	mv usr/share/doc/obsidian usr/share/doc/${PF}
	gzip -d usr/share/doc/${PF}/changelog.gz
}

