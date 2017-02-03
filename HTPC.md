# HTPC

This guide extends the [Windows](Windows.md) setup guide with more details on
configuring a HTPC, full of automation, downloaders, indexers, and media sharing.

## Steps

### Privacy Things

#### Proxifier

Download and install [Proxifier](https://www.proxifier.com/download.htm).

If you do not have a license for Proxifier, use the built-in proxy settings in
your applications.

1. Open Proxifier
2. Profile > Proxy Servers
3. Add [Private Internet Access](https://www.privateinternetaccess.com/pages/client-support/)'s SOCKS5 Proxy.
    Address: `proxy-nl.privateinternetaccess.com`
    Port: `1080`
    ✓ SOCKS Version 5
    ✓ Authentication > Enable
4. Advanced
5. Custom Label: `PIA`
6. Uncheck "Ask Username and Password if authentication fails"
7. Check
8. OK (Save)
9. File > ✓ Autostart
10. File > Uncheck "Check for Product Updates on Startup" (slows down bootups)

Now add rules!

  - Deluge

    ```
    Name:
    Deluge

    Applications:
    deluge.exe; deluged.exe
    
    Action:
    PIA
    ```

  - Sonarr
  
    ```
    Name:
    Sonarr
    
    Applications:
    NzbDrone.exe; NzbDrone.Console.exe; NzbDrone.Update.exe; NzbDrone*; *NzbDrone
    
    Action:
    PIA
    ```

#### Others

  - [Tor Browser](https://www.torproject.org/download/download-easy.html.en)
  - [PIA Client](https://www.privateinternetaccess.com/installer/download_installer_win)
  
### Downloading Tools

#### Torrent Client (Deluge)

My torrent client of choice is Deluge. Alternatively use uTorrent.

  1. For Deluge, after installing, open it.
  2. Go to Settings > Interface
  3. Uncheck "Classic Mode > Enable"
  4. Restart
  5. Start local Daemon
  6. Go to Settings > Daemon
  6. Check "Allow remote connections"

Add a user/pass combo to the `auth` file at:

  `%AppData%\deluge\auth`
  
  For help, [see guide](http://dev.deluge-torrent.org/wiki/UserGuide/Authentication).

  ```
  username:password:level
  ```

Allow Deluge through firewall

  1. Open Windows Firewall
  2. Inbound Rules
  3. New Rule
  4. Port
  5. Port is `58846`
  6. Next
  7. Name: `Deluge (Daemon)`
  8. Allow on on "Private" networks

Create a startup shortcut for `C:\Program Files (x86)\Deluge\deluged.exe` in:

  ```
  %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
  ```
  
  That will start the deluge daemon automatically on startup.
  
  *Note:* deluged has a tendency to crash.. Options:
  
  - [Service it](http://dev.deluge-torrent.org/wiki/UserGuide/Service/MS_Windows)
  - Watchdog it

Configure for downloads

  1. Preferences
  2. Downloads > Folders
    - Download to: `D:\downloads\incomplete`
    - ✓ Move completed to: `D:\downloads\complete`
    - ✓ Copy of .torrent files to `D:\downloads\torrents`
  3. Queue
    - ✓ Stop seeding when share ratio reaches: 2.00
    - ✓ Remove torrent when share ratio reached
  4. Plugins
    - ✓ Label
    - ✓ WebUi (needed for Sonarr)
  5. WebUi
    - ✓ Enable web interface
    - Load browser to http://127.0.0.1:8112
    - Default password is: `deluge`
    - Change default password
  6. Close Preferences, in sidebar, expand Labels
    - Right click > Add Label
    - Add: `tv`, right click, Label Options
      - Location > ✓ Apply location settings
        - ✓ Move completed to: `D:\downloads\shows`
    - Add: `movies`
      - Location > ✓ Apply location settings
        - ✓ Move completed to: `D:\downloads\movies`

#### Usenets

Download [sabnzbd](https://sabnzbd.org/)

When installing:
 - Uncheck Desktop Icon
 - ✓ Run at startup

During setup:
  1. English
  2. Server Details
    Lookup account info
    Host: `us-secure.newsdemon.com`
    ✓ SSL
    Port: `563`
    Connections: `50`
  3. Configure Download Folders
    - Temporary Download Folder: `D:\downloads\incomplete`
    - Completed Download Folder: `D:\downloads\complete`
  4. System Folders
    - .nzb Backup Folder: `D:\downloads\nzbs`
  5. Switch to General section
    - SABnzbd Web Server
      - SABnzbd Port: `8988`
    - Security
      - SABnzbd Username: set something
      - SABnzbd Password: set something
    - Switches
      - Uncheck "Launch Browser on Startup"
  6. Switch to Categories section
    - `tv` Folder/Path `D:\downloads\shows`
    - `movies` Folder/Path `D:\downloads\movies`

#### Sonarr

Download [Sonarr](https://sonarr.tv/).
You can also use [Sickbeard](http://sickbeard.com/), if preferred.

When installing, leave checked the option to install Windows service.

Open, go to Settings.

  - Media Management
    - ✓ Rename Episodes
    - Season Folder Format: `S{season:00}`
    - (double check all the examples are correct, toggle sliders on/off if needed)
  - Download Clients
    - Add new client
      - Select SABnzbd
      - Name: `SABnzbd`
      - Port `8988`
      - Find API Key at http://127.0.0.1:8085/sabnzbd/config/general/
      - Category `tv`
      - Test & Save
    - Add new client
      - Select Deluge
      - Name: `Deluge`
      - Password: enter (created above during Deluge setup)
      - Category: `tv`
    - ✓ Completed Download Handling > Remove
    - Advanced Options
      - Drone Factory: `D:\downloads\shows`
  - General
    - Port Number: `8989`
    - Uncheck "Open browser on start"
    - Authentication
      - Select Forms
      - Username: set something
      - Password: set something
    - Uncheck Analytics > Enable
  - Indexers
    - omgwtfnzbs
    - Wombles
    - OZnzb.com
    - Rarbg
    - Nyaa

#### Other

  - [Internet Download Manager]
  - [CouchPotato](https://couchpota.to/) for movies

### Sharing

  - [Plex](https://www.plex.tv/downloads/) or [Emby](https://emby.media/download.html)
  - [Mongoose](https://www.cesanta.com/#binary) for a static file web server

### Watchdog

  Use a watchdog program to ensure Deluge Daemon and Mongoose are restarted upon a crash.

  - [Application Monitor](http://www.jockersoft.com/english/appmonitor_index.php)
