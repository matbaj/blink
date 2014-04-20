Blink example for Attiny85
==========================

Requirements:
-------------

* You will need board with attiny85 with preloaded [micronucleus](https://github.com/micronucleus/micronucleus) bootloader 
 (for example [This board](https://www.tindie.com/products/BBTech/attiny85-usb-development-tool-board/))
* ruby with libusb gem
* If You want flash it under user You will need to add file ```61-attiny.rules``` in ```/etc/udev/rules.d/``` with rule:
```
SUBSYSTEM=="usb", ATTR{idVendor}=="16d0", ATTR{idProduct}=="0753", MODE="0666"
```
How to use it
-------------

```
git clone git@github.com:matbaj/blink.git
cd clone/
make flash
```
and then just plug Your board to USB port