$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($env:USERPROFILE + "\Start Menu" + "\Eclipse.lnk")
$Shortcut.TargetPath = "c:\tools\eclipse\VizIDE.exe"
$Shortcut.Arguments = "-vm `"C:\Program Files\Java\jdk1.8.0_72\jre\bin\server\jvm.dll`""
$Shortcut.WorkingDirectory = "c:\tools\eclipse\"
$Shortcut.Save()
