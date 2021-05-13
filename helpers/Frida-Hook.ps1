$Remote = "https://github.com/frida/frida/releases/download/14.2.14/frida-server-14.2.14-android-x86.xz"
$Destination = "./frida-server.xz"

if (Get-Item -Path $Destination -ErrorAction Ignore) {
    Write-Host "frida-server binary already exist localy, removing for avoiding any conflits..."
    Remove-Item $Destination
}

Write-Host "Downloading last frida-server release to x86 Android-based hosts..."
Invoke-WebRequest -Uri $Remote -OutFile $Destination

7z x $Destination
Remove-Item $Destination
Move-Item frida-server fs
adb push fs /data/local/tmp
Remove-Item fs
adb shell "su 0 chmod 077 /data/local/tmp/fs"
adb shell "su 0 chmod 077 /data/local/tmp/fs"
adb shell "su 0 ./data/local/tmp/fs"