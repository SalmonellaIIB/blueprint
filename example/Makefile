### Makefile -- Example LaTeX document

# Author: Michael Grünewald
# Date: Sun Sep 14 23:57:54 CEST 2014

# Blueprint (https://bitbucket.org/michipili/blueprint)
# This file is part of Blueprint
#
# Copyright © 2014 Michael Grünewald
#
# This file must be used under the terms of the CeCILL-B.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.txt

DOCUMENT=		example_timeline.mp
DOCUMENT+=		example_schedule.mp
DOCUMENT+=		example_umlcomponent.mp
DOCUMENT+=		example_legend.mp

MPTEX=			latex
MPDEVICE=		eps pdf png svg

example_legend-0.mps: times.d

times.d: monadic_buffer.ml
	ocaml ${.ALLSRC} > ${.TARGET}

REALCLEANFILES+=	times.d

.include "mpost.doc.mk"

### End of file `Makefile'
