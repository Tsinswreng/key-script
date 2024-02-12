# Tsinswreng AutoHotkey script
English | [中文](README_cn.md)

*English version is partly translated by AI*

## Usage
AutoHotkey is required to run these scripts.
If the scripts do not work properly, try running them in administrator mode.

## mouseMode.ahk
This script simulates mouse operations using the keyboard.

By default, the script starts in normal mode.
Press F1 + 9 to enter mouse mode and F1 + 0 to return to normal mode.

In keyboard mode, you can move the mouse cursor left, down, right, and up by pressing J, K, L, and ; respectively. The default step length is 10, and you can adjust it using the number keys 1 to 4.

You can also move the mouse cursor left, down, right, and up by pressing N, M, , and . respectively. However, the step length will be four times the original step length.

Press A, S, D, and F to scroll the mouse wheel left, down, right, and up respectively.

Press W for the left mouse button and E for the right mouse button. Long-pressing W will simulate holding down the left mouse button.

## arrow.ahk
This script allows you to move the cursor using the following hotkeys:

Alt + J: Move cursor left

Alt + K: Move cursor down

Alt + L: Move cursor right

Alt + ;: Move cursor up

Alt + I: Home

Alt + O: End

Ctrl + Left: Home

Ctrl + Right: End

You can also press Shift along with these hotkeys to select text.

## arrow_fast.ahk
This script is similar to arrow.ahk, but it moves the cursor four times the distance with each keypress.

Alt + N: Move cursor left four times

Alt + M: Move cursor down four times

Alt + ,: Move cursor right four times

Alt + .: Move cursor up four times

You can also press Shift along with these hotkeys to select text.

## TswG_keyMap.ahk

This script contains personal remappings of certain keys.

Right Alt key -> Backspace

Forward slash key and right Shift key are swapped

Original `[` key -> `Y`

Original `]` key -> `[`

Original `\` key -> `]`

Original `Y` key -> `\`

Caps Lock key -> Enter

Ctrl + 0 -> Caps Lock