#
# install toolchain
# brew install arm-none-eabi-gcc
#
.PHONY: all clean 
.DEFAULT_GOAL := build

PROJECT_NAME=max_arm
CWD = $(shell pwd)
GCC=/usr/local/bin/arm-none-eabi-gcc

LDFLAGS="-X 'switcher.Version=$(VERSION)' \
 		 -X 'switcher.GoVersion=$(GO_VERSION)' \
 		 -X 'switcher.BuildTime=$(BUILD_DATE)'"

## toolchain: install toolchain
toolchain:
	 brew install arm-none-eabi-gcc

## build: Build all binary
build: clean
	${GCC} -S -o main.s main.c -fverbose-asm -Os
	${GCC} -S -o main.thumb.s main.c -mthumb -fverbose-asm -Os
	

## clean: Clean build cache and remove bin directory
clean:
	
	rm -rf bin

## help: Show commands
help: Makefile
	@echo " Choose a command run in "$(PROJECT_NAME)":"
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
