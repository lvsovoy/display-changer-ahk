#Requires -Version 7

$displayinfo = Get-DisplayInfo

$activeMonitor = $displayinfo | Where-Object Active
$targetMonitor = $displayinfo | Where-Object -Property DisplayId -NE $activeMonitor.DisplayId

$activeMonitorName = $activeMonitor.DisplayName
$targetMonitorName = $targetMonitor.DisplayName

New-BurntToastNotification -Text "Monitor changer", "Changing $activeMonitorName to $targetMonitorName"

Enable-Display $targetMonitor.DisplayId
Set-DisplayPrimary $targetMonitor.DisplayId

Disable-Display $activeMonitor.DisplayId
