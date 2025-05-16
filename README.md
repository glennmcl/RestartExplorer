# Explorer Restart Utility

A simple, lightweight utility for quickly restarting the Windows Explorer process with a single click.

![Explorer Restart Utility](https://raw.githubusercontent.com/glennmcl/RestartExplorer/refs/heads/main/RestartExplorer.ico)

## Overview

Sometimes Windows Explorer becomes unresponsive, sluggish, or exhibits strange behavior. Rather than resorting to a full system reboot, this utility allows you to restart just the Explorer process, which often resolves common UI issues in seconds.

## Features

- **One-Click Restart**: Instantly restart Windows Explorer with a single click
- **Non-Intrusive**: Automatically closes after completion without requiring user input
- **Visual Feedback**: Color-coded console output shows progress and status
- **Error Handling**: Provides clear error messages if anything goes wrong
- **Portable**: Runs without installation and requires no additional dependencies

## Contents

- `RestartExplorer.lnk` - The shortcut file that launches the utility
- `RestartExplorer_v4.ps1` - The PowerShell script that handles the Explorer restart process
- `RestartExplorer.ico` - Custom icon file for the shortcut (referenced in the shortcut)

## Installation

1. Download or clone this repository
2. Place the `RestartExplorer` folder anywhere on your computer (recommended location: your desktop)
3. Create a shortcut to `RestartExplorer.lnk` on your desktop, taskbar, or Start menu for easy access

## Usage

Simply double-click the `RestartExplorer.lnk` shortcut whenever you need to restart Explorer.

The script will:
1. Stop all running Explorer processes
2. Wait briefly to ensure complete termination
3. Start a new Explorer process
4. Automatically close when complete

## How It Works

The utility uses PowerShell to:
1. Identify all running explorer.exe processes
2. Safely terminate them using the Stop-Process cmdlet
3. Wait for termination to complete
4. Launch a new explorer.exe instance
5. Display color-coded status messages throughout the process

## Requirements

- Windows 7/8/10/11
- PowerShell 3.0 or later (pre-installed on modern Windows systems)

## Troubleshooting

If you encounter any issues:

- **Script Won't Run**: Ensure PowerShell execution policy allows script execution. The shortcut is configured to bypass execution policy, but system policies may override this.
- **Permission Issues**: Try running the shortcut as Administrator
- **Explorer Doesn't Restart**: In rare cases, manual intervention may be required. Press Ctrl+Shift+Esc to open Task Manager, then use File > Run new task to start "explorer.exe"

## License

MIT License

Copyright (c) 2025 glennmcl

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Acknowledgments

- Icon source: [Icon Attribution/Source]
- Inspired by the need for a quick Explorer reset without full system reboots

## Disclaimer

Use at your own risk. While this utility is designed to be safe, restarting Explorer may close open Explorer windows and file operations.

---

Developed with the assistance of Claude AI by Anthropic
