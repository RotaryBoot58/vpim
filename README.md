# vpim
Void Packages IMproved

## Setting up this repo
Create a file in `/etc/xbps.d` called `90-repository-vpim.conf` and put the following line inside it:
```
repository=
```
Then run ```# xbps-install -S``` to sync all the repositories

## Contributing
Clone the git repository and install the bootstrap packages:

```
$ git clone https://codeberg.org/RotaryBoot58/vpim.git
$ cd vpim
$ ./xbps-src binary-bootstrap
```

Build a package by specifying the `pkg` target and the package name:

```./xbps-src pkg <package_name>```

Use `./xbps-src -h` to list all available targets and options.

Once built, the package will be available in `hostdir/binpkgs` or an appropriate subdirectory (e.g. `hostdir/binpkgs/nonfree`). To install the package:

```xbps-install --repository hostdir/binpkgs <package_name>```
