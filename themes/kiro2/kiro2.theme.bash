#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${yellow}★"
SCM_THEME_PROMPT_PREFIX="{${cyan}"
SCM_THEME_PROMPT_SUFFIX="${normal}}"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${yellow}★"
GIT_THEME_PROMPT_PREFIX="${bold_green}(${orange}"
GIT_THEME_PROMPT_SUFFIX="${bold_green})${normal}"

SCM_GIT_CHAR="${green}±${light_grey}"
SCM_SVN_CHAR="${bold_cyan}⑆${light_grey}"
SCM_HG_CHAR="${bold_red}☿${light_grey}"


RBENV_THEME_PROMPT_PREFIX=""
RBENV_THEME_PROMPT_SUFFIX=""
RBFU_THEME_PROMPT_PREFIX=""
RBFU_THEME_PROMPT_SUFFIX=""
RVM_THEME_PROMPT_PREFIX=""
RVM_THEME_PROMPT_SUFFIX=""

VIRTUALENV_THEME_PROMPT_PREFIX="py:"
VIRTUALENV_THEME_PROMPT_SUFFIX=""


#"⩐"
#"♠"
#⫸
function prompt_command()
{

	prefix="${background_blue}${bold_red}┌──${normal}${reset_colors}"
	appendix="${background_blue}${bold_red}└────────"

	prev_command_status="${background_blue}${bold_green}{${background_blue}${bold_white}$(echo '$?')${bold_green}}${bold_red}──${normal}${reset_colors}"
	dtime="${bold_green}[${bold_purple}\t${reset_color}${bold_green}]${normal}"
	user_host="${yellow}\u${bold_white}♠${bold_cyan}\h${normal}"
	current_directory="${bold_green}{${underline_yellow}\w${normal}${bold_green}}"

	git_branch="$(scm_prompt_info)${normal}"

  ruby_rvm="($(ruby_version_prompt))"
	python_env="($(python_version_prompt))"


	prompt="⧔${normal}${reset_color} "

	PS1="${prefix}${prev_command_status}${dtime} ${user_host} ${current_directory}${ruby_rvm}${python_env}$git_branch\n${appendix}${prompt}"
}

PROMPT_COMMAND=prompt_command;
