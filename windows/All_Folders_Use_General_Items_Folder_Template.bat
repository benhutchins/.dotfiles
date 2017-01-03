:: Created by: Shawn Brink
:: http://www.eightforums.com
:: Tutorial: http://www.eightforums.com/tutorials/9288-folder-template-set-default-all-folders-windows-8-a.html


REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /V FolderType /T REG_SZ /D NotSpecified /F


:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe

