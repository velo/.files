$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($env:USERPROFILE + "\Start Menu" + "\Eclipse.lnk")
$Shortcut.TargetPath = "c:\tools\eclipse\VizIDE.exe"
$Shortcut.Arguments = "-vm `"c:\Program Files\Java\jdk1.8.0_72\bin\javaw.exe`""
$Shortcut.WorkingDirectory = "c:\tools\eclipse\"
$Shortcut.Save()
