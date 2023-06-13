# Copyright 1999-2023 Gentoo Authors and Alex313031
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYPI_PN="MarkupSafe"
PYTHON_COMPAT=( python3_{9..12} )

inherit distutils-r1 pypi

DESCRIPTION="Implements a XML/HTML/XHTML Markup safe string for Python"
HOMEPAGE="
	https://palletsprojects.com/p/markupsafe/
	https://github.com/pallets/markupsafe/
	https://pypi.org/project/MarkupSafe/
"

LICENSE="BSD"
SLOT="0"
IUSE="-test +python3_9 +python_targets_python3_9"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~x64-macos ~x64-solaris"
RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}"

distutils_enable_tests pytest