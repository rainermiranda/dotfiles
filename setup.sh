#!/bin/bash

export XDG_CONFIG_HOME=${HOME}/.config

# Stow each directory to corresponding in ${HOME}/.config, except if the directory is "bash"
for dir in `ls -d */`
do
	if [ ${dir} == "shell/" ]; then
		echo "stowing oh-my-shell to ${HOME}"
		`stow -t ${HOME} ${dir}`
	else
		target_dir=${XDG_CONFIG_HOME}/${dir}
		echo "stowing directory ${dir} to ${target_dir}"
		mkdir -p ${target_dir}
		`stow -t ${target_dir} ${dir}`
	fi
done

echo ""
echo "** Don´t forget to add the line below at the end of your .bashrc file **"
echo ""
echo '. "${HOME}/.oh-my-shell/init.sh"'
echo ""
echo "** And remember: any changes to .bashrc must be made, from now on, in the file above **"
# Stow each file to ${HOME}
# Using '-printf' to supress dot-slash on filenames
#for file in `find ./ -maxdepth 1 -type f ! -name "setup.sh" -printf '%P\n'`
#do
#    echo "stowing file ${file} to ${HOME}/${file}"
#    `stow -t ${HOME} ${file}`
#done
