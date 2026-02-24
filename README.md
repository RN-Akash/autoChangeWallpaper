# 🖼️ Daily Auto Wallpaper Changer

Automatically change your desktop wallpaper based on the current day name  

Supports:

- 🍎 macOS
- 🪟 Windows

---


# 🍎 macOS Installation Guide

## ✅ Step 1: Download DailyWallpapers Folder 
## ✅ Step 2: Downolad Script File
## ✅ Step 3: Make Script Executable

```bash

step 1 : chmod +x ~/Desktop/AutoWallpapers/Auto-Mac/ChangeWallpaper.sh
step 2 : cd Desktop/AutoWallpapers/Auto-Mac
step 3 : ./ChangeWallpaper.sh

```

## ✅ Step 4: Automate Using launchd

```bash 

nano ~/Library/LaunchAgents/com.daily.wallpaper.plist

```

Paste:

```bash

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
"http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>

    <key>Label</key>
    <string>com.daily.wallpaper</string>

    <key>ProgramArguments</key>
    <array>
        <string>/Users/YOUR_USERNAME/Desktop/changeWallpaper.sh</string>
    </array>

    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>9</integer>
        <key>Minute</key>
        <integer>0</integer>
    </dict>

    <key>RunAtLoad</key>
    <true/>

</dict>
</plist>

```
[!NOTE]
> ⚠ Replace YOUR_USERNAME
> Save:
> CTRL + X → Y → Enter

Load it:
```bash

launchctl load ~/Library/LaunchAgents/com.daily.wallpaper.plist

```

> [!NOTE]
> 🎉 Done!
> Wallpaper changes daily at 9:00 AM and on login.


# 🪟 Windows Installation Guide

## ✅ Step 1: Download DailyWallpapers Folder 
Save inside:
```bash
C:\DailyWallpapers
```
## ✅ Step 2: Downolad PowerShell Script

## ✅ Step 3: Allow Script Execution (One-Time)
Open PowerShell as Administrator:
```bash
Set-ExecutionPolicy RemoteSigned
```
Press Y

## ✅ Step 4: Test Script
- Right-click file → Run with PowerShell
- If wallpaper changes → ✅ Working

## ✅ Step 5: Automate Using Task Scheduler
- Press Win + R
Type:
```bash
taskschd.msc
```

- Click Create Basic Task
Name:
```bash
Daily Wallpaper
```
Trigger:
- Select Daily
- Choose time (example 9:00 AM)

Action:
- Choose Start a Program
Program/script:
```bash
powershell
```

Add arguments:
```bash
-ExecutionPolicy Bypass -File "C:\DailyWallpapers\changeWallpaper.ps1"
```

Start in:
```bash
C:\DailyWallpapers
```

Click Finish.

> [!NOTE]
> 🎉 Done!
> Wallpaper will change daily automatically.

# 🔍 Troubleshooting
macOS:
- Check System Settings → Privacy → Automation
- Allow Terminal to control “System Events”

Windows:
- Make sure file names match today’s day
- Check execution policy
- Test script manually first

# 📌 License
Free to use and modify.