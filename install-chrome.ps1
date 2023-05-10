#Set location for chrome installation package
$installer = "$HOME\downloads" + "\chrome_installer.exe";

#Download installation file and run with arguments
(new-object System.Net.WebClient).DownloadFile('https://dl.google.com/chrome/install/latest/chrome_installer.exe', "$installer"); 
& "$installer" /silent /install;

#Remove chrome installer after finished
Remove-Item $installer;