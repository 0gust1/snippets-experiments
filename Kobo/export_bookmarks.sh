#!/bin/bash
sqlite3 -html KoboReader.sqlite 'select volumeID, contentID, Text, Annotation, ExtraAnnotationData, DateCreated from Bookmark' | tr '\n' ' ' | awk -f bookmarks2html.awk > bookmarks.html
