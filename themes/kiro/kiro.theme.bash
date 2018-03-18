#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX="(${yellow}"
SCM_THEME_PROMPT_SUFFIX="${normal})"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX="(${yellow}"
GIT_THEME_PROMPT_SUFFIX="${normal})"



RVM_THEME_PROMPT_PREFIX=""
RVM_THEME_PROMPT_SUFFIX=""

function prompt_command() {
    dtime="${orange}[${yellow}\t${orange}]${normal}"
    user_host="${blue}\u${red}@${cyan}\h${normal}"
    current_dir="${bold_blue}\w${normal}"
    rvm_ruby="${bold_red}$(ruby_version_prompt)${normal}"
    git_branch="$(scm_prompt_info)${normal}"
    prompt="${bold_green}\$${normal} "
    arrow="${bold_white}▶${normal} "
    prompt="${bold_green}\$${normal} "
    colon="${purple}:${normal}"

    PS1="${dtime} ${user_host}${colon}${current_dir} ${rvm_ruby} ${git_branch}
      $arrow $prompt"
}

PROMPT_COMMAND=prompt_command;
