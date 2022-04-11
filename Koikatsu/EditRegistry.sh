#!/usr/bin/env bash

# Only run this once to setup these registry items

# Disable WPF hardware acceleration to prevent graphical glitches with launchers, dnspy
wine reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Avalon.Graphics" /v DisableHWAcceleration /t REG_DWORD /d 1 /f

# Prevent possible mouse focus issues when alt+tab out of window
wine reg add 'HKEY_CURRENT_USER\Software\Wine\X11 Driver' /v UseTakeFocus /d 'N' /f