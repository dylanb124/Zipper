# Zipper
##Overview
Zipper is an ESPN-style ticker designed to be portable, efficient, and operate properly without internet access. Zipper improves communication throughout call centers by displaying a video/PowerPoint along with an easily customizable ticker across multiple displays, typically site-wide. It was originally designed and implemented by barndyla at GFK, and has since been expanded to other locations as well. 

**Important:** Zipper is only designed to run in a Firefox web browser. Running Zipper in another browser may result in content displaying incorrectly.

##Features
Zipper comes with a variety of features. When Zipper is installed at your site, you may request specific features be included or left out. 

**NOTE:** There are additional features planned for Zipper in future releases. Please refer to the "Upcoming Features" section below for more details.

###Ticker
The ticker is an ESPN-syle scroller that scrolls from right to left along the bottom of the screen. The ticker allows for efficient communication across an entire site, as changing the text displayed in the scroller takes mere seconds. The ticker has the following features:

* **Easily add/remove content displayed on the ticker by modifying a simple configuration file.**
* Allows for the use of custom titles and content.
* Allows multiple messages. The ticker will loop through all messages in the configuration file.
* **Pull live data from the web.**
* This feature must be requested, as it requires additional installation steps.
* The live data is displayed as a separate message on the ticker, appended to the end of the custom messages.
* Currently, pulling weather data is the easiest to implement. However, data may be pulled from other sources as well.
* **Customizable color scheme**
* The colors used in the ticker, such as the text color or background color, may be changed by request. Otherwise, the default color scheme displayed in the image above will be used.
* Automatic refresh
* **The ticker will automatically update when the configuration file has been changed.**

###Content Display
Currently, Zipper is compatible with MP4 files. This format is convenient, as it is natively supported in HTML5, and PowerPoints can easily be converted into this format as well. Current features include:

* **Multiple video file support.**
* Multiple video files may be left in the main folder. You may select which video is currently being played via the "config_video.txt" file.
* **Videos will automatically loop indefinitely.**
* **Automatic refresh**
* The web page will automatically update when the configuration file has been changed.

###AHOD Switch
Zipper comes with a script that may be executed when the site is All Hands on Deck. Current features include:

* **A toggle script to automatically begin or end the AHOD.**
* **Video feed and ticker messages automatically change when AHOD is initiated.**
* The messages and video for AHOD may be customized.
* **Seamless transition back to what was previously being displayed by running the toggle script again.**

##Upcoming Features
As of 2016, Zipper is still being improved. Below are a list of upgrades that are planned for Q1 2016:

* **Zipper GUI**
* A graphical user interface for Zipper built from scratch.
* This will replace the need to directly edit the config files.
* The interface will be web-based, allowing easy access and a clean look.

##Using Zipper
This section will walk through how to use the various features of Zipper, as outlined in the "Features" section above. The main directory will contain all the files a typical user should need.

###Edit Ticker Text
1. Locate the main Zipper directory. This is typically the folder with a "tv_display.html" file in it.
2. Edit the "config_ticker.txt" file. This is the config file for the ticker.
3. Each line in this file represents a separate message that will be displayed on the ticker. The format is as follows:
        Title | Body of message

        Title 2 | Body of message 2

        Title n | body of message n


###Change Content Display
####MP4 Video
There are two ways to change the video being displayed in Zipper. The first way involves overwriting the previous video with a new one.

1. Locate the main Zipper directory. This is typically the folder with a "tv_display.html" file in it.
2. Edit the "config_video.txt" file. This is the config file for the video.
3. Rename the new video to match the name displayed in this config file.
4. Copy and paste your video into the main directory, overwriting the previous video that was there.

The second method is similar to the first, but allows you to have videos with different names. This effectively allows you to store multiple videos in Zipper.

1. Locate the main Zipper directory. This is typically the folder with a "tv_display.html" file in it.
2. Copy and paste your video into the main directory.
3. Edit the "config_video.txt" file. This is the config file for the video.
4. Change the file name in this file to the file name of the new video you wish to play.

####URL
The method for changing the URL displayed in the content display varies only slightly from what is explained above. Simply paste the entire URL you wish to display in the "config_video.txt" file.

Websites that have been proven to function properly:

* GFK Sharepoint
* Embedded YouTube videos
* W3 Website
There are numerous other websites that are supported as well. Any website that can be embedded in an HTML iFrame will work properly with Zipper.

###Export PowerPoint presentation to MP4 file
Exporting your PowerPoint to MP4, a format supported by Zipper, is typically done at numerous call centers. The instructions below describe how to export your PowerPoint.

1. Launch PowerPoint and open your PowerPoint file.
2. Go to File > Export > Create a Video
3. Select your quality and other settings.
4. Hit "Create Video" and wait while your video is created. This may take a while if you have a large PowerPoint.

**NOTE:** If your slides do not seem to fit the screen properly, you may want to consider changing the aspect ratio of your slides. Refer to this webpage for assistance. If this does not make a difference, consider selecting a higher quality for video export.

###Embed YouTube Video
With the release of Zipper 1.05, you can now embed YouTube videos by using the following process.

1. Find the YouTube video you wish to embed.
2. Click the "Share" button under the video.
3. Select the "Embed" tab.
4. Copy the URL that is in quotations after the "src=" section.
5. Paste the URL in "config_video.txt". Also, copy and paste the following to the end of the URL: "?autoplay=1&loop=1&controls=0&showinfo=0".

**EXAMPLE:** The correct URL for the Rollin' Safari video is https://www.youtube.com/embed/yltlJEdSAHw?autoplay=1&loop=1&controls=0&showinfo=0.

###Toggle AHOD
Toggling the current mode that Zipper is in is very straightforward. You can either toggle AHOD mode for an individual machine, or use a "ToggleAllAHOD" script to toggle the current mode on multiple machines. The process is as follows.

* **ToggleAHOD** - Only use this script if you are logged into the machine running Zipper. It will toggle the current mode for this machine only.
* **ToggleAllAHOD** - Use this script from any location to toggle the mode of multiple machines at once.

*Updating AHOD Ticker Text and Video*

If you would like to modify the content that scrolls along the bottom, you can do so by first ensuring you are in normal mode. You should be able to see a file called "config_ticker_AHOD.txt". If you do not see this file, you are most likely already in AHOD mode, and should toggle back to normal mode before proceeding. You may modify "config_ticker_AHOD.txt" to display the content you would like to appear when Zipper is in AHOD mode.

Updating the AHOD video displayed during AHOD mode follows the same procedure as updating the normal video. The only difference is the file name, which is defined in "config_video_AHOD.txt". Please refer to the "Change Content Display" section for more details.

##Change Log
* **Zipper 1.0**
* Allows the user to easily display an MP4 with scrolling text underneath. Both the video and text can be specified via a config file.
* Live weather data is pulled in every hour and displayed as scrolling text underneath the video.
* Core functionality operates properly without any internet access (excluding live weather updates).
* Multiple videos may be stored in the main folder.
* **Zipper 1.05**
* Adds support for web pages. For example: displaying a page from the SharePoint or a YouTube video.
* Adds AHOD mode, which allows you to start and stop a custom set of AHOD video/messages with the click of a button.
* New wiki landing page for Zipper.
* New technical documentation wiki page for Zipper.
* **Zipper 1.06**
* Modified AHOD mode to use only one script, a "ToggleAHOD" script.
* Create a "ToggleAllAHOD" script to toggle the AHOD simultaneously at multiple locations.
* **Zipper 1.1 (Not Yet Released)**
* Adds a graphical user interface that users can use to configure Zipper as opposed to text files.
* Incorporates AHOD mode into the new GUI.

##Basic Troubleshooting

**The ticker text or video is not updating.**

* There are numerous reasons why this may occur.
* First, ensure that you properly changed the ticker messages or video.
* If you changed the ticker messages, remember to save the file.
* If you overwrote the previous video without changing any config files, make a slight modification to either config files, save, and un-do your modification, saving again. This will force a refresh.
* If this does not work, ensure that the text in "config_video.txt" matches the file name of your video EXACTLY. It is case sensitive.
* If the issue is not in the "config_video.txt" file, examine the "config_ticker.txt" file. Ensure the formatting is correct as per the "Edit Ticker Text" section above. 
