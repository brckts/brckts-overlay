# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="brckts's custom slock build"
HOMEPAGE="https://bitbucket.org/brckts/slock"
EGIT_REPO_URI="https://bitbucket.org/brckts/slock.git"
KEYWORDS="~amd64"

LICENSE="MIT"
SLOT="0"

DEPEND="x11-base/xorg-x11"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	eapply_user

	sed -i -e 's~/usr/local~/usr~g' config.mk || die "Couldn't fix install dir!"
}
