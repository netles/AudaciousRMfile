#!/usr/bin/env bash
#script name : AudaciousRMfile
#version : 0.2
#author : netles
#description: it will delete"bad" music from you disk untill it playing. Add music to audacious, listen, when playing shit, put hotkey to delete it.
#HOW to USE
#put it in you script folder, for example "/home/user/.scripts/AudaciousRMfile.sh" or "/home/user/.config/audacious/AudaciousRMfile.sh"
#add hotkey in your desktop environment 



#all options see on audtool --help, after installation audacious
#check also gio, you can use any remove utilites, for example rm, gvfs-trash, trash
TRACK=$(audtool current-song-filename)
DELPL=$(audtool playlist-position)
gio trash "$TRACK"
# other way - moving file to some folder
# mv "$(audtool current-song-filename)" ~/.MyTrash
audtool playlist-advance 
audtool playlist-delete "$DELPL"
