#!/bin/bash
###################
# https://github.com/felippenardi/dotfiles/blob/master/makesymlinks.sh
#
###################

dir=~/dotfiles
oldir=~/dotfiles_old

files="vimrc gitignore_global gitconfig bashrc"


echo "Creating $olddir for backup"
mkdir -p $olddir
echo "ok, done"

echo "Change to the correct directory"
cd $dir
echo "ok, done"

for file in $files; do
    echo "Moving existing dotfile to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink"
    ln -s $dir/$file ~/.$file
    echo "$file done"
done
