.PHONY: all deps compile clean console rel relclean clobber

all: deps rel

deps:
	@./rebar get-deps

compile:
	@./rebar compile

clean:
	@./rebar clean

console:
	@funnel_mini/bin/funnel console

rel: relclean compile
	@./rebar generate

relclean:
	@rm -rf funnel_mini

clobber: relclean clean
