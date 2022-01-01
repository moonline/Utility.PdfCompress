# PDF compress utility

A simple utility to compress PDF files, based on YAD and Ghostscript.

![Application starter](./docs/screenshot-2.jpg)
![Application interface](./docs/screenshot-1.jpg)

## Installation

### Linux (Appimage)

Download installation package of the [latest release](https://github.com/moonline/Utility.PdfCompress/releases).

#### Create application launcher

1. Copy AppImage file to `.local/bin/pdfcompress.AppImage` in your home directory.
2. Make it executable `sudo chmod+x ~/.local/bin/pdfcompress.AppImage`.
3. Copy the launcher `pdfcompress.desktop` to `.local/share/applications/` and the icon `icon-pdf-128.png` to `.local/share/icons/`.


## Development

### Environment

* Install yad: `sudo apt install yad`
* Install ghostscript: `sudo apt install ghostscript`

### Start

```sh
chmod+x pdfcompress.sh
pdfcompress.sh
```


## Package

* Install `appimage-builder`: https://appimage-builder.readthedocs.io/en/latest/intro/install.html

### Build appimage on Ubuntu/Mint

* 32bit: `appimage-builder --recipe appimage/appimage-i386.yml`
* 64bit: `appimage-builder --recipe appimage/appimage-amd64.yml`

