# Monitor Switcher

Powershell script uses the assumption that you have two monitors connected to the pc and want to use only one at a time. When ran, it detects two monitors, enabales the second one, and disables the first one. If ran again, the process is reversed.

## Usage

Download all files and put in your ahk folder.

Put a shortcut to [compiled ahk scriptio executable](monitor_swithcer.exe) into ```%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup``` to startup script when the windows starts

Currently is set up to launch using ```Control + Print Screen```

Trigger key combo can be changed in [ahk script](monitor_switcher.ahk)

## Requirements

 - PowerShell 7 or later [link to instructions](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#install-powershell-using-winget-recommended)
- AutoHotKey [official website](https://autohotkey.com/)
- [PS module that shows windows notifications](https://github.com/Windos/BurntToast) needs to be installed manually for now 
```
Install-Module -Name BurntToast
```


## Known issues
 - scaling issues if monitors are different, but that's nothing new for windows
 - PS module does not get installed automatically, will be fixed (maybe) in the future
