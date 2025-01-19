EAPI=8

inherit unpacker

DESCRIPTION="An unofficial, unendorsed language server for meson written in C++"
HOMEPAGE="https://github.com/JCWasmx86/mesonlsp"
SRC_URI="https://github.com/JCWasmx86/mesonlsp/releases/download/v4.3.7/mesonlsp-x86_64-unknown-linux-musl.zip"
S="${WORKDIR}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

src_unpack() {
	:
}

src_install() {
	unpacker
	dobin mesonlsp
}
