#!/bin/bash

export XDG_CONFIG_HOME=${HOME}/.config

# Stow each directory to corresponding in ${HOME}/.config, except if the directory is "bash"
for dir in `ls -d */`
do
	if [ ${dir} == "bash/" ]; then
		echo "stowing bash profile and oh-my-shell to ${HOME}"
		`stow -t ${HOME} ${dir}`
	else
		target_dir=${XDG_CONFIG_HOME}/${dir}
		echo "stowing directory ${dir} to ${target_dir}"
		mkdir -p ${target_dir}
		`stow -t ${target_dir} ${dir}`
	fi
done

# Stow each file to ${HOME}
# Using '-printf' to supress dot-slash on filenames
#for file in `find ./ -maxdepth 1 -type f ! -name "setup.sh" -printf '%P\n'`
#do
#    echo "stowing file ${file} to ${HOME}/${file}"
#    `stow -t ${HOME} ${file}`
#done
