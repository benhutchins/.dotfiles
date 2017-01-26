# Windows Setup

This is my guide to setup a fresh Windows 10+ install, from scratch.

## Steps

1. Use Ninite

  See https://ninite.com/

  Ninite allows you to quickly install apps.

  Selected apps:

    - Firefox
    - Chrome
    - 7-Zip
    - XnView (optional; photo viewing app, supports many formats, 
    - TeamViewer (optional; for better remote desktop)
    - WinDirStat (optional; for determining what is consuming disk space)
    - VLC (optional; for playing videos)
    - SumatraPDF (for reading PDFs, although Firefox & Chrome works well now)
    - ShareX (optional; for taking screenshots easily)
    - Java (optional; if you need it)
    - LibreOffice (optional; if you don't have Microsoft Office)
    - Putty (optional; use the `ssh` from the `lxss`)
    - Steam (optional; if this computer will be for personal use)

2. Setup Editors

  - [Vim](http://www.vim.org/download.php#pc)

      Rename [`.vimrc`](.vimrc) to `_vimrc` and place at in `%USERPROFILE%`

  - [Atom](https://atom.io/download/windows)

3. Setup Syncthing

  Download executable from https://syncthing.net/

  Move syncthing to `C:\Apps\syncthing\syncthing.exe`

  Create a startup shortcut for `syncthing.exe` in:

  ```
  %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
  ```

4. Additional Applications

  - [Slack](https://slack.com/downloads/windows)
  - Skype (pre-installed on Windows 10 now)
  - Skype for Business (might need to install the "standalone" package)
  - [Microsoft Office](https://www.office.com/myaccount) (if you didn't install LibreOffice)
  - [Logitech Alert Commander](http://support.logitech.com/en_us/software/alert-software)

5. Gaming Things

  - [Corsair Link](http://www.corsair.com/en-us/support/downloads) (for fan control)
  - [Logitech Gaming Software](http://support.logitech.com/en_us/software/lgs) (for G930)
  - [Stinkyboard](http://stinkyboard.com/support/)

6. Privacy Things

  - [Proxifier](https://www.proxifier.com/download.htm)
  - [PIA Client](https://www.privateinternetaccess.com/installer/download_installer_win)

7. Additional Utilities

  - [CoreTemp](http://www.alcpu.com/CoreTemp/)
  - [ProcessExplorer](https://technet.microsoft.com/en-us/sysinternals/processexplorer.aspx)
  - [RegexRenamer](http://regexrenamer.sourceforge.net/)

8. Downloading Tools

  - Deluge, uTorrent, or Transmission for torrents
  - [sabnzbd](https://sabnzbd.org/) for usergroups
  - [Internet Download Manager]
  - [Sonarr](https://sonarr.tv/) (preferred) or [Sickbeard](http://sickbeard.com/) for series
  - [CouchPotato](https://couchpota.to/) for movies

9. Sharing

  - [Plex](https://www.plex.tv/downloads/) or [Emby](https://emby.media/download.html)
  - [Mongoose](https://www.cesanta.com/#binary) for a static file web server

10. Watchdog

  Use a watchdog program to ensure Deluge Daemon and Mongoose are restarted upon a crash.

  - [Application Monitor](http://www.jockersoft.com/english/appmonitor_index.php)

11. Disable Crap & Crapware

  - OneDrive [guide](https://support.office.com/en-us/article/Turn-off-or-uninstall-OneDrive-f32a17ce-3336-40fe-9c38-6efb09f944b0)
  - Cortona [guide](http://superuser.com/questions/949569/can-i-completely-disable-cortana-on-windows-10)
  - Telemetry [guide](http://winaero.com/blog/how-to-disable-telemetry-and-data-collection-in-windows-10/)

12. Enable Linux Subsystem (`lxss`)

  See the [official guide](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide).
  
  For reference, the lxss directory will be avaialble at:
  
  `%LocalAppData%\lxss\`

13. Install Development Things

  Either for Windows:

  - [git](https://git-scm.com/download/win)
    Might also want [SourceTree](https://www.sourcetreeapp.com/), [Github for Windows](https://desktop.github.com/), or [Gitkraken](https://www.gitkraken.com/download)
  - [node.js](https://nodejs.org/en/download/) for Windows

  For for `lxss`:
  
  ```
  apt-get update
  apt-get install git -y
  ```
