# Backup and Restore  
My solution for backup and restore of my dotfiles and program files 

## How it works
I use rsync to regularly poll various files and folders for changes and pull the changes into this directory. The script I use to do this is ```syncChanges``` . The ```syncChanges``` script has a separate function defined to backup each folder allowing fine grained control over what to include and what not to include. Each function can also be used as a template to add more folders to be backed up.

The restore script hasn't been written yet but it will be a fairly simple script that moves files from the various folders in this repo to their proper place. This repo was structred such that this task would be simple 