for file in bashrc bash_profile
do
	if [ -f ${file} ]; then
		ln -s ${PWD}/$file ${HOME}/.${file}
	fi
done

[[ $SHELL == "/bin/bash" ]] || chsh -s /bin/bash