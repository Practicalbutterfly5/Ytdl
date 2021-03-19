# Ytdl


**Ytdl** is tasker+termux project to download YouTube videos on **android** very easily.

#### Features
* Download YouTube videos, playlists, and audios.
* Supports download by copying YouTube link, or sharing it to termux app.
* Select videos in a playlist that you want to download.
* Get live update of download status in notification.
* No need of any addon or plugin apps. Only Tasker and Termux are required.
* Supports all YouTube links, channel link(to download all/selected videos of a channel), embed link. Livestream downloading hasnt been tested yet.


#### Dependencies
* [Tasker app](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm)
*[Termux](https://f-droid.org/en/packages/com.termux.tasker/)
* Termux packages- ffmpeg, python, youtube-dl, atomicparsley, git

#### Installation

1. Copy and paste the following command in termux and press Enter key.
      
      ```curl https://raw.githubusercontent.com/Practicalbutterfly5/Ytdl/work/installytdl.sh > installytdl.sh && chmod +x installytdl.sh && bash installytdl.sh```

2. Tasker will open automatically and ask to import ytdl profile. If it doesn't do so automatically, you can import xml from [this TaskerNet link](https://taskernet.com/shares/?user=AS35m8nYO2KrDhtHnG3NNyeEpC1I3aBlL349HB7KHCBcBdz7DgYGq9nCOtOP%2BuTRApmJuA0UCGgl&id=Project%3Aytdl)

3. Launch the ytdl_setup task and configure your preferences. Re-run this task if you want to change any setting in future.


#### USAGE

After ytdl is installed and setup task is run, you are ready to download using any of these method.

1. Method 1
Share any YouTube link to termux app. Termux app will just momentarily and then close.


2. Method 2

   *For **android version<=9**, they will be able to copy YouTube link to clipboard to trigger ytdl.


   *For **android version>=10**, will need to give tasker ```android.permission.WRITE_SECURE_SETTINGS```. [This can be done using adb for non-root users](https://tasker.joaoapps.com/userguide/en/help/ah_secure_setting_grant.html), rooted users can simply execute ```pm grant net.dinglisch.android.taskerm android.permission.WRITE_SECURE_SETTINGS``` in rooted shell.