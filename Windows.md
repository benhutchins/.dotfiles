# Windows Setup

This is my guide to setup a fresh Windows 10+ install, from scratch.

## Steps

1. Use Ninite

  See https://ninite.com/

  Ninite allows you to quickly install apps.

  Selected apps:

    - Chrome
    - 7-Zip
    - XnView
    - TeamViewer
    - WinDirStat
    - Putty
    - WinSCP
    - VLC
    - SumatraPDF
    - ShareX
    - Java (optional)
    - LibreOffice (optional, use if you don't have Microsoft Office)
    - Steam (optional)

2. Version Control

  [Git for Windows](https://git-scm.com/download/win)

  Either or:

  - Visit https://desktop.github.com/ to download and install Github Desktop.

  - Visit https://www.sourcetreeapp.com/ to download and install SourceTree.

3. Setup Editors

  - [Vim](http://www.vim.org/download.php#pc)

      Rename [`.vimrc`](.vimrc) to `_vimrc` and place at in `%USERPROFILE%`

  - [Atom](https://atom.io/download/windows)

4. Setup Syncthing

  Download executable from https://syncthing.net/

  Move syncthing to `C:\Apps\syncthing\syncthing.exe`

  Create a startup shortcut for `syncthing.exe` in:

  ```
  %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
  ```

5. Additional Applications

  - [Slack](https://slack.com/downloads/windows)
  - Skype
  - Skype for Business
  - [Microsoft Office](https://www.office.com/myaccount) (if you didn't install LibreOffice)
  - [Logitech Alert Commander](http://support.logitech.com/en_us/software/alert-software)

6. Install Development Things

  - [node.js](https://nodejs.org/en/download/)

7. Gaming Things

  - [Corsair Link](http://www.corsair.com/en-us/support/downloads) (for fan control)
  - [Logitech Gaming Software](http://support.logitech.com/en_us/software/lgs) (for G930)
  - [Stinkyboard](http://stinkyboard.com/support/)

8. Privacy Things

  - [Proxifier](https://www.proxifier.com/download.htm)
  - [PIA Client](https://www.privateinternetaccess.com/installer/download_installer_win)

9. Additional Utilities

  - [CoreTemp](http://www.alcpu.com/CoreTemp/)
  - [ProcessExplorer](https://technet.microsoft.com/en-us/sysinternals/processexplorer.aspx)
  - [RegexRenamer](http://regexrenamer.sourceforge.net/)

10. Downloading

  - Deluge, uTorrent, or Transmission for torrents
  - [sabnzbd](https://sabnzbd.org/) for usergroups

  - [Sonarr](https://sonarr.tv/) (preferred) or [Sickbeard](http://sickbeard.com/) for series
  - [CouchPotato](https://couchpota.to/) for movies

11. Sharing

  - [Plex](https://www.plex.tv/downloads/) or [Emby](https://emby.media/download.html)
  - [Mongoose](https://www.cesanta.com/#binary) for a static file web server

11. Watchdog

  Use a watchdog program to ensure Deluge Daemon and Mongoose are restarted upon a crash.

  - [Application Monitor](http://www.jockersoft.com/english/appmonitor_index.php)
