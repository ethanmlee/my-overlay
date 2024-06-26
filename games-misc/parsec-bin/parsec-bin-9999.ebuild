EAPI=7

inherit unpacker

DESCRIPTION="Simple, low-latency game streaming"
HOMEPAGE="https://parsecgaming.com/"
SRC_URI="https://builds.parsec.app/package/parsec-linux.deb -> ${P}.deb"

LICENSE="Parsec-EULA"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	dev-libs/expat
	dev-libs/libbsd
	media-libs/mesa
	sys-devel/gcc[cxx]
	sys-libs/glibc
	x11-libs/libX11
	x11-libs/libXau
	x11-libs/libXdamage
	x11-libs/libXdmcp
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXxf86vm
	x11-libs/libdrm
	x11-libs/libxcb
	x11-libs/libxcb
	x11-libs/libxshmfence
"
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

QA_PREBUILT="usr/bin/parsecd usr/share/${PN}/skel/parsecd-${PV/\./-}.so"

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	cp -R usr/ "${D}/" || die "Could not copy."
}
