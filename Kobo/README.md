A quick Hack to export bookmarks and notes from the Kobo touch ereader
======================================================================

Disclaimer :
------------
I'm not very command line / bash savvy, it's more a quick and dirty hack to get the thing done.

It's horribly crude, raw and dirty... But I wanted to have my bookmarks and notes avaiable without installing or launching huge softwares like Calibre or Adobe thing.

How to use :
------------
- Connect your Kobo reader to your computer (preferably a linux system or a system with sqlite3 and awk avaiable)
- Copy the files to /.kobo/ (hidden folder)
- from the terminal run export_bookmarks.sh : it will generate a bookmarks.html file ine the /.kobo directory.

TODO :
------
Craft a nice SQL request to have better content in the genrated HTMl file (quotes and notes sorted by book)
Styling of the generated HTMl file


Further improvements / ideas :
-----------------------------
Actually you have to execute the script from your computer, with the Kobo connected.
A great feature would be embeding notes and bookmarks in the target epub file. 
For that, the export command should be executable on the the Kobo embeded linux system. The kobo touch uses busybox to emaulate/give some standard GNU commands ; unfortunately, sqlite3 and awk are not avaiable on busybox.