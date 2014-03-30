Mute/Restore Volume for Visionaire Studio: Adventure Game Engine [Lua] - more info [here](http://wiki.visionaire-tracker.net/wiki/Mute/Restore_Volume_%28CMS%29 "mute/restore volume wiki article")

This script allows you to mute or restore the volume for all sound types; it is also possible from **Visionaire Studio _4.0_** onwards, to mute/restore volume via the new *eGlobalVolume* command. see **eGlobalVolume Method**.

**Instructions**

*1*. Add the **main script** to the Visionaire Studio Script Editor & set the script as a **definition** script.

*2*. Create condition "**cond_mute**" & set default value to *false*.

*3*. Create **5** values "**vol_0**", "**vol_1**", "**vol_2**", "**vol_3**" & "**vol_4**" - these will be used to store volumes values.

*4*. To mute/restore volume add an *execute a script* action to a key input, button or scene object, containing...
```
globalMute()
```
