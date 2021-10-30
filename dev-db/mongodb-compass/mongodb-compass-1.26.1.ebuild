# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker xdg

DESCRIPTION="Mongodb compass"

HOMEPAGE="https://docs.mongodb.com/compass/current/"
KEYWORDS="-* ~amd64"

SRC_URI="https://downloads.mongodb.com/compass/${PN}_${PV}_amd64.deb"
S="${WORKDIR}"

LICENSE=""
SLOT="0"

DEPEND=""
# DEPEND="
# x11-libs/gtk+
# x11-libs/libnotify
# dev-libs/nss
# x11-libs/libXtst
# x11-misc/xdg-utils
# x11-libs/libXScrnSaver
# app-crypt/libsecret
# "

RDEPEND="${DEPEND}"
BDEPEND=""

QA_PREBUILT="*"

src_unpack() {
	:
}

src_install() {
	dodir /
	cd "${ED}"
	unpacker

	mv usr/share/doc/mongodb-compass usr/share/doc/${PF}
}

