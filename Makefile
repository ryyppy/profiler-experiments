SHELL = /bin/sh

context = 4.06.0
working_dir = $(realpath .)

build:
	jbuilder build --dev @install

clean:
	jbuilder clean

run:
	jbuilder exec --context=${context} bin/profiler.exe

install: build

watch:
	watchman-make -p '**/*.ml' '**/*.mli' 'Makefile' -t build

.PHONY: build clean install watch
