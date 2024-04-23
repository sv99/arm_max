arm assembler
=============

```bash
# tap with old version
brew tap armmbed/formulae/
# download from arm https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-mac.tar.bz2
mv gcc-arm-none-eabi-10.3-2021.10-mac.tar.bz2 $(brew --cache -s armmbed/formulae/arm-none-eabi-gcc)
# install with file from cache
brew install armmbed/formulae/arm-none-eabi-gcc
arm-none-eabi-gcc --version
```

Должна быть версия 10.3

После этого можно компилировать.

```bash
make
# or
make build
```

Генерирует два файла *.s и *.thumb.s

