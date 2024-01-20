</$objtype/mkfile

TARG=md2ms
MANFILES=${TARG:%=%.man}
BIN=/rc/bin

UPDATE=\
	mkfile \
  ${TARG} \
  ${MANFILES} \
  /sys/man/1/${TARG}.man

</sys/src/cmd/mkone
