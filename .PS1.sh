#
# ~/.PS1.sh
# append to .bashrc (or git-prompt.sh in Windows)
# 

function get_git_branch {
	# get the branch (empty if not in a repository)
	git branch 2>/dev/null | 
	# get the current branch
	grep "*" | 
	# get the branch name (remove the 1st 2 characters) 
	cut -c 3-
}

COLOR_RESET=$(tput sgr0)
COLOR_GREEN=$(tput setaf 2)
COLOR_YELLOW=$(tput setaf 3)
# format :
# reverse datetime , current working directory , git branch
PS1='\[$COLOR_YELLOW\][ \D{%y/%m/%d} \t ]\[$COLOR_RESET\] \w \[$COLOR_GREEN\]$(get_git_branch)\[$COLOR_RESET\] > '

