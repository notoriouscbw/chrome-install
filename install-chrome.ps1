$installer = $env:TEMP + "\chrome_installer.exe";
Invoke-WebRequest "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile $installer;
Start-Process -FilePath $installer -Args "/silent/install" -Verb RunAs -Wait;
Remove-Item $installer;