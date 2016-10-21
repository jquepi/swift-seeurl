BUILD_OPTS=-Xlinker -L/usr/lib

SWIFTC=swiftc
SWIFT=swift
ifdef SWIFTPATH
	SWIFTC=$(SWIFTPATH)/bin/swiftc
	SWIFT=$(SWIFTPATH)/bin/swift
endif

OS := $(shell uname)
ifeq ($(OS),Darwin)
	SWIFTC=xcrun -sdk macosx swiftc
	BUILD_OPTS=-Xlinker -lcurl
endif

OSVER=$(shell lsb_release -sr)
ifeq ($(OSVER),14.04)
	BUILD_OPTS+=-Xswiftc -DLIBCURL_OLD
endif

all: debug test

release: CONF_ENV=release 
release: build_;

debug: CONF_ENV=debug
debug: build_;

build_:
	$(SWIFT) build -v --configuration $(CONF_ENV) $(BUILD_OPTS)
	
clean:
	$(SWIFT) build --clean build
	
distclean:
	$(SWIFT) build --clean dist
	
test:
	$(SWIFT) test -v $(BUILD_OPTS)
