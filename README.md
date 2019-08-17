# JailMe
An uninstaller script for:
Coolstars' [Electra](https://github.com/coolstar/electra) iOS 11.0 - 11.4 jailbreak.
Pwn20wnds' [unc0ver](https://github.com/pwn20wndstuff/unc0ver) iOS 11.0 - 12.2 jailbreak. 
to.panga mess-up
and the Xiaolian Fakebreak. 
Please read everything in this readme before you do anything!

[Dowload link](https://github.com/sukarodo/JailMe/archive/master.zip)
or
[Download raw file](https://raw.githubusercontent.com/sukarodo/JailMe/master/unjailbreak.sh)

## Chimera Support?
Chimera support is currently in the works. Until then, you may have restore rootFS from the app itself.
Otherwise, I don't know of any other method for a full clean.

## Why?
Why not?

I followed all filesystem changes from the jailbreak bootstrap files and electra source code and added those to the unjailbreak.sh script. This should undo everything done by the installer, __except the APFS snapshot.__ (So SemiRestore11/Rollectra should still work.)

!! DO NOT USE THIS IF YOU DON'T KNOW WHAT YOU ARE DOING !!
This is not recommended by Coolstar, KirovAir, or even myself.

## How to use?
1. Uninstall ALL __user__ installed packages and tweaks. You can use SemiRestore11-lite for this now!
2. Put unjailbreak.sh on your phone. Anywhere is fine.
3. Reboot your device and rejailbreak _without_ tweaks enabled. (This should make the process more stable)
4. SSH into your phone as __root__ and run unjailbreak.sh from this repo:
```
cd /<DIRECTORY>
sh unjailbreak.sh
```
5. Wait until the device reboots and then reboot again.

## User reports
Don't use to avoid any risk at all since I can _NOT_ guarantee a successful uninstall. Every system is different after multiple tweak installations so make sure you remove every tweak you have installed to be as stock as possible.

__Update 01-03-2018:__ Multiple people on Reddit and [here](https://github.com/KirovAir/delectra/issues/2) have used the script succesfully on various devices.

__Update 04-03-2018:__ Even futurerestore(d) devices seems to work, as well as the iPhone 6s as seen in the [user reports](https://github.com/KirovAir/delectra/issues/2). Still, be careful!

## Troubleshooting
#### My tweaks are not working on the betas anymore?
This was an issue when you used an older version of this script. This is fixed now.
1. SSH into your phone as __root__ and run:
```
mkdir /Library/Frameworks/
```
2. Reboot and re-jailbreak with a beta electra version and it should be fixed.

#### I get a topanga error when I try to rejailbreak
This happens when there are still some remaining files on your system from unfortunate packages or tweaks. The latest version of this script should take care of this for you. 
This may also happen when the script gets aborted half-way through. 

- If you still have SSH access simply re-run the latest version of this script.
- If not use Filza and (carefully!) check for any of the files in [this list](https://gist.github.com/KirovAir/a84afe1c8e75309abd731893ed5e1e37) and remove them. __Do not remove directories.__ Remove the files one by one there are crucial system files in some of the directories next to the topanga files.
