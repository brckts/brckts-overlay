# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A flat design theme for KDE Plasma"
HOMEPAGE="https://github.com/vinceliuice/Layan-kde"
SRC_URI=""
EGIT_REPO_URI="https://github.com/vinceliuice/Layan-kde"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	AURORAE_DIR="/usr/share/aurorae/themes"
	SCHEMES_DIR="/usr/share/color-schemes"
	PLASMA_DIR="/usr/share/plasma/desktoptheme"
	LAYOUT_DIR="/usr/share/plasma/layout-templates"
	LOOKFEEL_DIR="/usr/share/plasma/look-and-feel"
	KVANTUM_DIR="/usr/share/Kvantum"
	WALLPAPER_DIR="/usr/share/wallpapers"
	dodir "${AURORAE_DIR}"
	dodir "${SCHEMES_DIR}"
	dodir "${PLASMA_DIR}"
	dodir "${LAYOUT_DIR}"
	dodir "${LOOKFEEL_DIR}"
	dodir "${KVANTUM_DIR}"
	dodir "${WALLPAPER_DIR}"
	cp -r "${S}"/aurorae/themes/* "${D}/${AURORAE_DIR}"
	cp -r "${S}"/color-schemes/*.colors "${D}/${SCHEMES_DIR}"
	cp -r "${S}"/Kvantum/* "${D}/${KVANTUM_DIR}"
	cp -r "${S}"/plasma/desktoptheme/{Layan,Layan-solid} "${D}/${PLASMA_DIR}"
	cp -r "${S}/plasma/desktoptheme/icons" "${D}/${PLASMA_DIR}/Layan"
	cp -r "${S}/plasma/desktoptheme/icons" "${D}/${PLASMA_DIR}/Layan-solid"
	cp -r "${S}/color-schemes/Layan.colors" "${D}/${PLASMA_DIR}/Layan/colors"
	cp -r "${S}/color-schemes/Layan.colors" "${D}/${PLASMA_DIR}/Layan-solid/colors"
	cp -r "${S}"/plasma/look-and-feel/* "${D}/${LOOKFEEL_DIR}"
	cp -r "${S}"/wallpaper/* "${D}/${WALLPAPER_DIR}"
}
