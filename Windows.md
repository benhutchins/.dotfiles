# Windows Setup

This is my guide to setup a fresh Windows 10+ install, from scratch.

## Steps

### Use Ninite

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

### Setup Editors

  - [Vim](http://www.vim.org/download.php#pc)

      Rename [`.vimrc`](.vimrc) to `_vimrc` and place at in `%USERPROFILE%`

  - [Atom](https://atom.io/download/windows)

### Setup Syncthing

  Download executable from https://syncthing.net/

  Move syncthing to `C:\Apps\syncthing\syncthing.exe`

  Create a startup shortcut for `syncthing.exe` in:

  ```
  %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
  ```

### Additional Applications

  - [Slack](https://slack.com/downloads/windows)
  - Skype (pre-installed on Windows 10 now)
  - Skype for Business (might need to install the "standalone" package)
  - [Microsoft Office](https://www.office.com/myaccount) (if you didn't install LibreOffice)
  - [Logitech Alert Commander](http://support.logitech.com/en_us/software/alert-software)

### Gaming Things

  - [Corsair Link](http://www.corsair.com/en-us/support/downloads) (for fan control)
  - [Logitech Gaming Software](http://support.logitech.com/en_us/software/lgs) (for G930)
  - [Stinkyboard](http://stinkyboard.com/support/)

### Additional Utilities

  - [CoreTemp](http://www.alcpu.com/CoreTemp/)
  - [ProcessExplorer](https://technet.microsoft.com/en-us/sysinternals/processexplorer.aspx)
  - [RegexRenamer](http://regexrenamer.sourceforge.net/)

### Disable Crap & Crapware

  - OneDrive [guide](https://support.office.com/en-us/article/Turn-off-or-uninstall-OneDrive-f32a17ce-3336-40fe-9c38-6efb09f944b0)
  - Cortona [guide](http://superuser.com/questions/949569/can-i-completely-disable-cortana-on-windows-10)
  - Telemetry [guide](http://winaero.com/blog/how-to-disable-telemetry-and-data-collection-in-windows-10/)
  - Background Apps [guide](http://superuser.com/questions/958210/why-do-windows-10-foreground-apps-mysteriously-launch-as-background-processes#960213)

### Enable Linux Subsystem (`lxss`)

  See the [official guide](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide).
  
  For reference, the lxss directory will be avaialble at:
  
  `%LocalAppData%\lxss\`

### Install Development Things

  Either for Windows:

  - [git](https://git-scm.com/download/win)
    Might also want [SourceTree](https://www.sourcetreeapp.com/), [Github for Windows](https://desktop.github.com/), or [Gitkraken](https://www.gitkraken.com/download)
  - [node.js](https://nodejs.org/en/download/) for Windows

  For for `lxss`:
  
  ```
  sudo apt-get update
  sudo apt-get install git -y
  ```

## More

- See [HTPC](HTPC.md) guide for setting up downloaders, indexers, media apps
