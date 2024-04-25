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

upload arm binary packages
--------------------------

Make release v0.1

```bash
brew install gh
gh auth login
gh release list
gh release list
gh release upload v0.1 arm-gnu-toolchain-13.2.rel1-darwin-x86_64-arm-none-eabi.pkg
gh release upload v0.1 gcc-arm-none-eabi-10.3-2021.10-mac.tar.bz2
```

После этого пакеты можно скачать с github

```bash
wget https://github.com/sv99/arm_max/releases/download/v0.1/arm-gnu-toolchain-13.2.rel1-darwin-x86_64-arm-none-eabi.pkg
wget https://github.com/sv99/arm_max/releases/download/v0.1/gcc-arm-none-eabi-10.3-2021.10-mac.tar.bz2
```
