# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A flat material design gtk theme"
HOMEPAGE="https://github.com/vinceliuice/Layan-gtk-theme"
SRC_URI=""
EGIT_REPO_URI="https://github.com/vinceliuice/Layan-gtk-theme"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
x11-themes/gtk-engines-murrine
x11-libs/gdk-pixbuf
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dodir /usr/share/themes/
	./install.sh -d "${D}/usr/share/themes/" || die "Install failed!"
}
