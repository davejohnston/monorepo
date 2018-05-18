COMPONENTS := controller edge

all: build check test

build: $(addsuffix -build,$(COMPONENTS))
%-build:
	@$(MAKE) -C $* build

check: $(addsuffix -check,$(COMPONENTS))
%-check:
	@$(MAKE) -C $* check

test: $(addsuffix -test,$(COMPONENTS))
%-test:
	@$(MAKE) -C $* test

deploy: $(addsuffix -deploy,$(COMPONENTS))
%-deploy:
	@$(MAKE) -C $* deploy

image: $(addsuffix -image,$(COMPONENTS))
%-image:
	@$(MAKE) -C $* image
