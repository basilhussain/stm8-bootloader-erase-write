# Overview

These are open-source erase/write RAM routines for use with the ROM bootloader of the [STM8](https://www.st.com/en/microcontrollers-microprocessors/stm8-8-bit-mcus.html) family of microcontrollers. They are intended primarily for use with (and are bundled by) the [stm8gal](https://github.com/gicking/stm8gal) programming utility.

These routines provide the functionality for the bootloader to erase and write flash and EEPROM memory on the device being programmed. While STM8 microcontrollers have the capability to self-program, such activity cannot be performed from code that is running from the flash memory itself; any writing/erasing of flash must be done with code running from RAM. Some devices in the family (STM8L/AL) have self-contained routines that are automatically copied to RAM, whereas others (STM8S/AF) do not and require the programming utility (i.e. stm8gal) to upload these routines to RAM prior to any write/erase activity.

The aim has been for 100% compatible behaviour to the ST routines. They are written in C (as opposed to the assembly language of ST's) so should be more comprehensible to the community.

## Motivation

While ST provide a set of erase/write routines for various STM8 devices - available on their [website](https://www.st.com/en/embedded-software/stsw-stm8068.html) or included with their [Flash Loader](https://www.st.com/en/development-tools/flasher-stm8.html) utility - which are licensed in a freely-distributable manner, they remain proprietary to ST. The stm8gal utility formerly embedded these ST routines by necessity, but the ambiguous wording of ST's licensing terms called in to question whether or not this was strictly permitted.

Therefore an effort has been made to produce open-source erase/write routines that may freely be embedded in to stm8gal, avoiding the need to distribute ST's proprietary property.

# Building

The erase/write routines are built using a makefile-based build system, and compiled using the [SDCC](http://sdcc.sourceforge.net) compiler. Running a build will produce multiple binary firmware images for all supported device density and bootloader version variants.

The build produces two sets of outputs:

* Firmware binaries in [Intel HEX](https://en.wikipedia.org/wiki/Intel_HEX) format (with `.ihx` extension) in the `bin` folder.
* C code header include files (with `.h` extension) in the `inc` folder. These files encode the contents of each `.ihx` as a static array of bytes, and are intended for embedding in another program (i.e. stm8gal).

Output folders are created if they do not already exist.

## Prerequisites

* SDCC C compiler
* GNU Make
* GNU Awk (or compatible)
* XXD

## Linux (or Unix-like)

From within the `src` folder, run `build.sh`.

To remove all output binaries, intermediate object files, etc. run `clean.sh`, again from within the `src` folder.

## Windows

**Important:** First run `setenv.bat` in the `src` folder. This will open a new command prompt window with the environment set up appropriately for performing the build. All build commands *must* be executed from this command prompt window.

From within the `src` folder, run `build.bat`.

To remove all output binaries, intermediate object files, etc. run `clean.bat`, again from within the `src` folder.

**Note:** The versions of build tooling assumed are as follows:

* `mingw32-make` from [Mingw-w64](http://mingw-w64.org)
* `gawk` from [GnuWin](http://gnuwin32.sourceforge.net/packages/gawk.htm)

Please check that the paths to them in the `setenv.bat` file matches your environment; edit their paths in that file if necessary.

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

# In-Memory Code Layout

When the bootloader wants to erase or write data in flash or EEPROM, it calls upon functions that have been placed in RAM. An area of RAM is reserved for these routines between addresses `0xA0` and `0x1FF`.

When either of the erase or write functions are called by the bootloader, it does so at a fixed address. The addresses vary by bootloader version:

| Function | 2.0     | 2.1     | 2.2     | 2.4     | 1.0     | 1.2     | 1.3     | 1.4     |
| -------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- |
| Erase    | `0xA0`  | `0xA0`  | `0xA0`  | `0xA0`  | `0xA0`  | `0xA0`  | `0xA0`  | `0xA0`  |
| Write    | `0x162` | `0x180` | `0x180` | `0x180` | `0x12f` | `0x150` | `0x150` | `0x150` |

Due to the fact that our RAM routines are written in C, it is an unfortunate fact that the compiled size of the code is not quite as compact as the original ST routines (hand-written in assembly). This posed problems, particularly with respect to fitting the erase functionality in the smaller area used by the earliest bootloader versions (1.0 and 2.0). It meant that some code would have to reside beyond `0x1FF`. This is feasible, as the bootloader itself uses only `0x0` to `0x9F` for its own variables, and nothing beyond `0x1FF`.

What was decided was to break out some of the common code shared between erase and write functions and place it at `0x300`, leaving the range `0x200`-`0x2FF` free. Why? To support adding additional capabilities to stm8gal for so-called 'plug-in' features that will allow for actions other than the bootloader's standard 'read', 'write' and 'erase' commands. This would be accomplished by uploading (using the 'write' command) custom code temporarily to `0x200` and then jumping to it using the 'go' command. Any 'return' or result data can be read back from memory using subsequent 'read' commands.

With common code residing at `0x300` and above, care however must be taken not to run into any RAM used by the stack during operation (stack starts at top of RAM and expands downwards). Taking as a worst-case scenario of some STM8 devices having only 1KB of RAM, where the stack begins at `0x3FF`, it was decided to allow 64 bytes for the stack (because the bootloader itself and these RAM routines make very little use of the stack) and set an upper limit for common code of `0x3BF`.

To summarise, the overall memory layout adopted by these RAM routines is as follows:

| Start Address | End Address | Purpose                                 |
| ------------- | ----------- | --------------------------------------- |
| `0xA0`        | `0x1FF`     | Erase and write functions               |
| `0x200`       | `0x2FF`     | Reserved for auxilliary 'plug-in' code† |
| `0x300`       | `0x3BF`     | Common shared code                      |

(† Any static/global variables used by such code shall also reside in this area.)

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