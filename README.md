# Ytdl


**Ytdl** is tasker+termux project to download YouTube videos on **android** easily.

#### Features
* Download YouTube videos, playlists, and audios.
* Supports downloading by copying YouTube link to clipboard, or sharing link to termux app.
* Supports all YouTube links, including channel links, embedded vidoes links. Livestream downloading hasnt been tested yet.
* Select or unselect videos in a playlist/channel that you want to download.
* Get live update of download status in notification.
* No need of any addon or plugin apps. Only Tasker and Termux are required.


#### Dependencies
* Tasker app[(Play store link)](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm)
* Termux([Fdroid link](https://f-droid.org/en/packages/com.termux.tasker/), [Play store link](https://play.google.com/store/apps/details?id=com.termux))
* Termux packages- ffmpeg, python, youtube-dl, atomicparsley, git

#### Installation

1. Goto your android settings>Apps and notifications>Tasker. In Tasker permissions scroll all the way down to "Additiona Permissions" and enable the permission "Run commands in Termux environment"

![Giving tasker permission to execute in termux environment](tasker_setting_tutorial.gif)

2. Copy and paste the following command in termux and press Enter key.
      
      ```curl https://raw.githubusercontent.com/Practicalbutterfly5/Ytdl/work/installytdl > installytdl && chmod +x installytdl && bash installytdl```  
It will download about 80Mb of packages to setup.

3. Tasker will open automatically and ask to import ytdl profile. If it doesn't do so automatically, you can import xml from [this TaskerNet share.](https://taskernet.com/shares/?user=AS35m8nYO2KrDhtHnG3NNyeEpC1I3aBlL349HB7KHCBcBdz7DgYGq9nCOtOP%2BuTRApmJuA0UCGgl&id=Project%3Aytdl)

4. Launch the ytdl_setup task and configure your preferences. Re-run this task if you want to change any setting in future.


#### USAGE

After ytdl is installed and setup task is run, you are ready to download using any of these method.

* Method 1  
  Share any YouTube link to termux app. Termux app will just momentarily and then close.


* Method 2  
  For **android version<=9**, they will be able to copy YouTube link to clipboard and trigger ytdl.  
  
  For **android version>=10**, will need to give tasker ```android.permission.WRITE_SECURE_SETTINGS```. [This can be done using adb for non-root users](https://tasker.joaoapps.com/userguide/en/help/ah_secure_setting_grant.html), rooted users can simply execute ```pm grant net.dinglisch.android.taskerm android.permission.WRITE_SECURE_SETTINGS``` in rooted shell.
