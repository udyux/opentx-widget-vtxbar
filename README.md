# VtxBar

OpenTX widget for color screen OpenTX radios which displays VTx channel based on 6 position switch.

## Disclaimer

This script does not rely on telemetry. It does not reflect the actual craft's state and should not be used in situations where reliable data is critical. It is the user's responsibility to check for correct operation before use.

**IF IN DOUBT, DO NOT FLY!**

## Options

| Option | Description             |
| ------ | ----------------------- |
| Input  | Input that controls VTx |
| Color  | Text color              |

## Configuration

Due to a 5 option limit imposed by OpenTX, the labels can only be set in the code. Don't worry, the process is simple:

- Open the `main.lua` file from the extracted folder in a code editor or notepad.
- Change the values (right side) in the `labels` variable that starts at line 19.
- Save the file, and follow the installation instructions below.

## Installation

Download the `.zip` file from the [latest release](https://github.com/udyux/opentx-widget-vtxbar/releases/latest), extract it and place the folder in the `/WIDGETS/` directory on your transmitter's SD card.

## Usage

For the time being, this widget is intended to be used in the top bar section of the interface.

Simply select the widget, configure the switch you use for controlling the VTx and you're all set.
