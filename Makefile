prog :=xnixperms

debug ?= debug

$(info debug is $(debug))

ifdef debug
  release :=
  target :=debug
  extension :=debug
else
  release :=--release
  target :=release
  extension :=
endif

all: build run

build:
	cargo build $(release)

run:
	./target/$(target)/rust-pico
