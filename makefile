ifeq ($(OS),Windows_NT)     # is Windows_NT on XP, 2000, 7, Vista, 10...
	detected_OS := Windows
else
	detected_OS := $(shell uname)  # same as "uname -s"
endif
.PHONY: recognize-os
recognize-os:
	@echo $(detected_OS)