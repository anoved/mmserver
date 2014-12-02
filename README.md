# Mobile Mouse Server for Linux



**Important: 

- mmserver has not yet been tested with Mobile Mouse Pro 3.2.3, which may expect changes to server behavior. Please report any major bugs.
- Please update to the latest available code for compatibility with Mobile Mouse 3.0.0, released 23 October 2013. Versions of mmserver prior to commit [203916b](https://github.com/anoved/mmserver/commit/203916bc853aa90310e9ff596c96612e7ccff0cd) may not respond to mouse motion events received from 3.0.0 clients.**

---

Use your iOS or Android device as a network mouse and keyboard for your Linux computer using [Mobile Mouse](http://www.mobilemouse.com/) and this software, which is a fork of [Mobile Mouse Server for Linux](http://sourceforge.net/projects/mmlinuxserver/) by Erik Lax. This fork by Jim DeVona is based on an [earlier fork](https://github.com/kiriakos/mmserver) by Kiriakos Krastillos.

## Modifications

- Revised mouse acceleration algorithm.
- Added support for horizontal scrolling.
- Added user-configurable scrolling speed limit.
- Added support for middle mouse button.
- Added support for gesture commands.
- Fixed numeric keypad input of numerals.
- Fixed keyboard input of capital letters and some other characters (hack).
- Added options to disable keyboard input and zeroconf networking.
- Added support for basic clipboard sync (pull server text clip to client)
- Changed config file loading to simplify startup and first run.
- Other minor changes.

## Installation

First, install prerequisite packages:

```sh
sh builddep.sh
```

Then, prepare the build directory:

```sh
mkdir build
cd build
cmake ..
```

Lastly, compile and install the software:

```sh
make
sudo make install
```

Invoke by running `mmserver` or by choosing *Mobile Mouse Server for Linux* from your system menu.

### RPM package creation

Red Hat Package Manager or RPM Package Manager (RPM). RPMs are a standardized package format on the Linux platform and they take care
of library dependecies and file consistency. RPM provides a binary file that can be installed without compilation on the same 
platform it was built for. Read more here: http://en.wikipedia.org/wiki/RPM_Package_Manager

```sh
yum -y install rpmdevtools
sudo bash builddep_fedora.sh
rpmdev-setuptree
bash build_rpm.sh
# Read where the output rpm file is written and use yum to install the package for your arch.
# example install:
sudo yum install ~/rpmbuild/RPMS/x86_64/mmserver-1.4.0-0.SS.fc19.x86_64.rpm 
```

### Debian package

Debian package is same as RPMs but for Debian based Linux distributions.

```sh
sudo sh builddep.sh
sh build_deb.sh
# Read where the output deb file is written and use aptitude ( or dpkg ) to install the package for your arch.
# example install:
sudo dpkg -i ../mmserver_1.4.0-1_amd64.deb
```

## Security

The Mobile Mouse protocol is unencrypted. Among other things, this means your key presses are transmitted in plain text, so an eavesdropper connected to your network could easily monitor your input (including passwords) without otherwise compromising your computer or mobile device. I therefore recommend not using Mobile Mouse on public networks. If you must, at least refrain from entering sensitive text.

Additionally, I recommend using the `device.id` and `device.password` configuration settings to restrict Mobile Mouse connections to approved devices.

## Compatibility

This fork was developed primarily with Mobile Mouse 2.7.1 for iOS and briefly tested with Mobile Mouse 3.0.0 for iOS. It may or may not be compatible with other client versions.
Briefly tested with version 3.0.2 of Mobile Mouse ( free version ) on iOS.

## License

This software is freely distributed under the terms of the [GNU General Public License, version 2.0](http://www.gnu.org/licenses/gpl-2.0.txt). See the `LICENSE` file for details.
