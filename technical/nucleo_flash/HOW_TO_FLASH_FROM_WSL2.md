---
layout: default
title: flash EVB1000 with WSL2
parent: Nucleo Flash
---

# How to flash EVB1000 using a Nucleo board and WSL2

## 1. check busid of nucleo board

```
$ usbipd.exe wsl list
BUSID  VID:PID    DEVICE                                                        STATE
1-3    0483:374b  ST-Link Debug, USB Mass Storage, STMicroelectronics STL...  Not attached
1-7    8087:0a2b  Intel(R) Wireless Bluetooth(R)                           Not attached
2-1    0eef:c01d  USB Input Device                                              Not attached
2-3    5986:054c  USB HD Webcam                                                 Not attached
```

## 2. connect USB to WSL2

in this case, 1-3 is ST-Link debugger.

```
usbipd.exe wsl attach --busid 1-3
```

## 3. check stlink on WSL2.

Use `lsusb`.

```
$ lsusb
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 004: ID 0483:374b STMicroelectronics ST-LINK/V2.1
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

Use `st-info --probe` (Need sudo).

```
$ sudo st-info --probe
Found 1 stlink programmers
 serial: 303636394646353635363533373536363837323234313238
openocd: "\x30\x36\x36\x39\x46\x46\x35\x36\x35\x36\x35\x33\x37\x35\x36\x36\x38\x37\x32\x32\x34\x31\x32\x38"
  flash: 0 (pagesize: 0)
   sram: 0
 chipid: 0x0000
  descr: unknown device
```
