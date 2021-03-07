# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 optfeature

DESCRIPTION="A posix script that helps you find Youtube videos and opens using mpv/youtube-dl"
HOMEPAGE="https://github.com/pystardust/ytfzf"
SRC_URI=""
EGIT_REPO_URI="https://github.com/pystardust/ytfzf"
KEYWORDS="~amd64"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

# Upstream says dmenu is not required, but it's the default menu
RDEPEND="
app-misc/jq
media-video/mpv
net-misc/youtube-dl
"

DOCS=( README.md )

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_compile() {
	# Upstream provides a makefile, but there is nothing to compile
	# Set to 'true' to prevent sandbox errors when src_compile triggers make install
	true
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr/bin install
	einstalldocs
}

pkg_postinst() {
	optfeature "Menu" app-shells/fzf x11-misc/dmenu x11-misc/rofi

	einfo "${PN} supports ueberzug which is currently not available from repos"
	einfo "Please install it separately"
}
