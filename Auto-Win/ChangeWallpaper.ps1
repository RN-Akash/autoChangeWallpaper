# Get current day
$day = Get-Date -Format "dddd"

# Path to wallpaper
$wallpaperPath = "C:\DailyWallpapers\$day.jpg"

# Set wallpaper
Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll",SetLastError=true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

[Wallpaper]::SystemParametersInfo(20, 0, $wallpaperPath, 3)