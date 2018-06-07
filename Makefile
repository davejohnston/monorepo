export MAKEFLAGS="-j 4"

COMPONENTS := ui database pipeline workstation

# Run make all to build everything
all: $(COMPONENTS)

build: $(addsuffix -build,$(COMPONENTS))
%-build:
	$(MAKE) -C $* build

check: $(addsuffix -check,$(COMPONENTS))
%-check:
	$(MAKE) -C $* check

test: $(addsuffix -test,$(COMPONENTS))
%-test:
	$(MAKE) -C $* test

image: $(addsuffix -image,$(COMPONENTS))
%-image:
	$(MAKE) -C $* image

deploy: $(addsuffix -deploy,$(COMPONENTS))
%-deploy:
	$(MAKE) -C $* deploy

$(COMPONENTS):
	@$(MAKE) -C $@

.PHONY: $(COMPONENTS)
