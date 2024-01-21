# mk
</$objtype/mkfile

TARG=md2ms
MAN=/sys/man/1
MANFILES=${TARG:%=%.man}
BIN=/rc/bin

UPDATE=\
	mkfile \
  ${TARG} \
  ${MANFILES} \
  ${MAN}/${TARG}

default:V: all

all:V: install man

install:V: $BIN/$TARG

$BIN/$TARG:
	cp $TARG $BIN/$TARG
	chmod 755 $BIN/$TARG

man:V: $MAN/$TARG
$MAN/%:		%.man
	cp $prereq $target
