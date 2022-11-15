TITLE Just Dance Wii WEBM Resizer (originally taken from github and modded by Sen)
cls
@echo off
set /P inputfilename=Input File Name: 
set /P bitrate=Bitrate: 
set /P codename=Output File Name: 
echo Converting please wait...
ffmpeg.exe -i input.webm -hide_banner -loglevel error -threads:v 4 -sws_flags bicubic -codec:v libvpx  -r:v 25  -b:v %bitrate% -bufsize 1000k -g 120 -rc_lookahead 16 -profile:v 1 -qmax 51 -qmin 11 -slices 4 -an -vol 0 -b:v %bitrate%  -aspect 16:9 -b:v %bitrate% -filter:v scale=512:384 %codename%
echo Done!