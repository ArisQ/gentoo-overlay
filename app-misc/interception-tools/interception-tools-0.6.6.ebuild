# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="A minimal composable infrastructure on top of libudev and libevdev"
HOMEPAGE="https://gitlab.com/interception/linux/tools"
EGIT_REPO_URI="https://gitlab.com/interception/linux/tools.git"
EGIT_COMMIT="v0.6.6"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-libs/libevdev
virtual/libudev
dev-cpp/yaml-cpp"

# cmake && Boost.Interprocess
DEPEND="${RDEPEND}
dev-util/cmake
dev-libs/boost"

BDEPEND=""

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_configure() {
	cmake_src_configure

	newinitd "${FILESDIR}"/interception-tools.init interception-tools
}
