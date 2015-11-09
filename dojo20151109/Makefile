CC = gcc
INCS =
LIBS =
CFLAGS += -g -Wall ${INCS}
#LDFLAGS += -static ${LIBS}
SRC = sut.c
OBJ = ${SRC:.c=.o}

all: options sut runner test

options:
	@echo sut build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} $<

runner: runner.o sut.o sutmain.o
	@echo CC -o $@
#	@echo Stubbing symbols: main
#	@strip -N main sut.o -o _sut.o
	@${CC} -o $@ runner.o sut.o ${LDFLAGS}

test:
	@echo Running tests...
	@./runner

sut: ${OBJ} sutmain.o
	@echo CC -o $@
	@${CC} -o $@ ${OBJ} sutmain.o ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f runner *.o *.core sut
