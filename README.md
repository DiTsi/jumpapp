# jumpapp for Void Linux

This is scripts and template for building [jumpapp](https://github.com/mkropat/jumpapp)

Scripts use [official way](https://github.com/void-linux/void-packages/blob/master/README.md) for building custom packages. It's taking up about 1Gb of space for void-packages. Just remove it after install.

## Build and install
```bash
git clone https://github.com/DiTsi/jumpapp.git
./build.sh
./install.sh
```

## Remove
```bash
sudo xbps-remove -R jumpapp
```
