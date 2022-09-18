fish_vi_key_bindings
# fish_default_key_bindings # to turn it off

set fish_greeting
if status is-interactive
	echo (set_color yellow)Welcome to(set_color blue) Sharky\'s(set_color yellow) coding space.
	echo (set_color normal)In order to code, you have to feed(set_color blue) Sharky(set_color red) one(set_color green) Sharky Buiscuit(set_color normal).
end

# if status --is-login
#   source (brew --prefix)"/opt/bash-git-prompt/share/gitprompt.fish"
# end

alias vi="nvim"
alias pi="pip3"
alias py="python3"

function fish_prompt -d "write out the prompt"
	# code learnt from fish_config presets. thx fish community!
	# custom username prompt thingy

	set -l last_status $status

	if test $last_status -ne 0
		set_color red
	else
		set_color green
	end
	echo -n -s $USER

	set_color blue
	echo -n "@buiscuit"
	if test $last_status -ne 0
		set_color red
	else
		set_color green
	end
	echo -n "[$last_status]"

	# git
	set_color green
	echo -n "$git_info"

	set -q fish_prompt_pwd_dir_length
	or set -lx fish_prompt_pwd_dir_length 0
	set_color yellow
	echo -n " $(prompt_pwd)"

	echo -n (set_color brpurple) (fish_vcs_prompt) $normal ' ' $prompt_status

	# next row
	echo
	if test $last_status -ne 0
		set_color red
	else
		set_color green
	end
	echo -n '﬌ '

	echo -n -s $status_color $suffix ' ' $normal
end
