# Overview

These are open-source erase/write RAM routines for use with the ROM bootloader of the [STM8](https://www.st.com/en/microcontrollers-microprocessors/stm8-8-bit-mcus.html) family of microcontrollers. They are intended primarily for use with (and are bundled by) the [stm8gal](https://github.com/gicking/stm8gal) programming utility.

These routines provide the functionality for the bootloader to erase and write flash and EEPROM memory on the device being programmed. While STM8 microcontrollers have the capability to self-program, such activity cannot be performed from code that is running from the flash memory itself; any writing/erasing of flash must be done with code running from RAM. Some devices in the family (STM8L/AL) have self-contained routines that are automatically copied to RAM, whereas others (STM8S/AF) do not and require the programming utility (i.e. stm8gal) to upload these routines to RAM prior to any write/erase activity.

The aim has been for 100% compatible behaviour to the ST routines. They are written in C (as opposed to the assembly language of ST's) so should be more comprehensible to the community.

## Motivation

While ST provide a set of erase/write routines for various STM8 devices - available on their [website](https://www.st.com/en/embedded-software/stsw-stm8068.html) or included with their [Flash Loader](https://www.st.com/en/development-tools/flasher-stm8.html) utility - which are licensed in a freely-distributable manner, they remain proprietary to ST. The stm8gal utility formerly embedded these ST routines by necessity, but the ambiguous wording of ST's licensing terms called in to question whether or not this was strictly permitted.

Therefore an effort has been made to produce open-source erase/write routines that may freely be embedded in to stm8gal, avoiding the need to distribute ST's proprietary property.

# Building

The erase/write routines are built using a makefile-based build system, and compiled using the [SDCC](http://sdcc.sourceforge.net) compiler. Running a build will produce multiple binary firmware images for all supported device density and bootloader version variants.

Output binaries can be found in the `bin` folder (which will be created if it does not exist). Output files are in [Intel HEX](https://en.wikipedia.org/wiki/Intel_HEX) format, with extension `.ihx`.

## Prerequisites

* SDCC C compiler
* GNU Make
* GNU Awk (or compatible)

## Linux (or Unix-like)

From within the `src` folder, run `build.sh` or `make`.

To remove all output binaries, intermediate object files, etc. run `clean.sh` or `make clean`, again from within the `src` folder.

## Windows

From within the `src` folder, run `build.bat`.

To remove all output binaries, intermediate object files, etc. run `clean.bat `, again from within the `src` folder.

**Note:** building on Windows utilises the `mingw32-make` utility supplied by [Mingw-w64](http://mingw-w64.org) as well as Awk from [GnuWin](http://gnuwin32.sourceforge.net/packages/gawk.htm). Please check that the paths to them in the `build.bat`, `clean.bat` and `check-seg-size.bat` files match your environment; edit their paths in those files if necessary.

# Supported Devices

Currently, the following device series, density and bootloader version combinations are supported.

| Series | Density      | Bootloader Versions |
| ------ | ------------ | ------------------- |
| STM8S  | High (128K)  | 2.0, 2.1, 2.2, 2.4  |
| STM8S  | Medium (32K) | 1.0, 1.2, 1.3, 1.4  |
| STM8AF | High (128K)  | 2.0, 2.1, 2.2, 2.4  |
| STM8AF | Medium (32K) | 1.0, 1.2, 1.3, 1.4  |
| STM8L  | Low (8K)     | 1.0†                |

STM8L and STM8AL series devices contain their own in-built erase/write routines that are automatically copied to RAM upon bootloader start-up, so support is unnecessary for those devices.

(† The built-in erase/write routines require a patch for this series, density and version, which this project also provides.)

# Testing

These erase/write RAM routines have been tested and found to work without problem on the following devices.

| Device     | Board                                                                          | Bootloader Version |
| ---------- | ------------------------------------------------------------------------------ | ------------------ |
| STM8S207MB | [muBoard](http://www.cream-tea.de/presentations/160305_PiAndMore.pdf)          | 2.1                |
| STM8S208RB | [STM8S Nucleo](https://www.st.com/en/evaluation-tools/nucleo-8s208rb.html)     | 2.2                |
| STM8AF5288 | [STM8A Discovery](https://www.st.com/en/evaluation-tools/stm8a-discovery.html) | 2.2                |
| STM8S105C6 | [STM8S Discovery](https://www.st.com/en/evaluation-tools/stm8s-discovery.html) | 1.2                |
| STM8S105K6 | [Sduino Uno](https://github.com/roybaer/sduino_uno)                            | 1.3                |

Reports of successful usage or testing on any other devices or bootloader versions are appreciated. Please create a GitHub issue with your feedback.

## Call for Devices

We have so far not been able to get our hands on any STM8S or STM8AF devices with very early version bootloaders (namely, high-density v2.0 and medium-density v1.0). There are several peculiarities with these early versions that we are keen to ascertain are being handled correctly. If you (or anyone you know) has such a device, please get in touch by creating a GitHub issue.

# License

This software is licensed under the Apache License Version 2.0. Please see the LICENSE.txt file for full license text.