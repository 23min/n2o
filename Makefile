REBAR=$(shell which rebar || echo ./rebar)

.PHONY: all compile clean

DIRS=src
DEPS=deps

all: deps compile

compile:
	$(REBAR) compile

deps:
	$(REBAR) get-deps

clean-all:
	$(REBAR) clean
