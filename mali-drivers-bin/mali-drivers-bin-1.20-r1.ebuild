# Copyright (c) 2014 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit unpacker

DESCRIPTION="Mali drivers, only copy libs"
HOMEPAGE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="-* arm"

DEPEND=""

RDEPEND="!media-libs/mali-drivers
	x11-base/xorg-server
	x11-drivers/xf86-video-armsoc
	!x11-drivers/opengles"

S=${WORKDIR}

src_install() {
	cp -pPR "${FILESDIR}"/* "${D}/" || die "Install failed!"
}
