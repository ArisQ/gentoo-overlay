# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="transforming the most useless key ever in the most useful one"
HOMEPAGE="https://gitlab.com/interception/linux/plugins/caps2esc"
EGIT_REPO_URI="https://gitlab.com/interception/linux/plugins/caps2esc.git"
EGIT_COMMIT="v0.3.2"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="app-misc/interception-tools"
DEPEND=""
BDEPEND=""

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_configure() {
	cmake_src_configure
}

src_install() {
	cmake_src_install

	insinto /etc/interception/udevmon.d/
	doins caps2esc.yml
}
