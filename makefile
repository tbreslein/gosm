BUILD_DIR := build

.PHONY: all clean

all: build/gosm

build:
	meson setup $@

build/gosm: build
	ninja -C build

clean:
	rm -fr build
