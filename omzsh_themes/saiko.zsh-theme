#! /usr/bin/env zsh
# saiko theme for oh-my-zsh

RESET="%{$reset_color%}"
C_WD=$FG[227]
C_TIME=$FG[246]
C_USER=$FG[045]
C_SUDO=$FG[229]
C_HOST=$FG[079]
C_SUCCESS=$FG[047]
C_ERROR=$FG[197]

C_GIT_INFO=$FG[209]
C_GIT_STATUS=$FG[204]

PROMPT='${RESET}%{%(!.${C_SUDO}.${C_USER})%}%n${RESET}@${C_HOST}%m${RESET}: %{${C_WD}%}%~${RESET} %{%(?.${C_SUCCESS}.${C_ERROR})%}➜${RESET} '
RPROMPT='%{${C_GIT_INFO}%}$(git_prompt_info)${RESET} %{${C_GIT_STATUS}%}$(git_prompt_status)${RESET} %{${C_TIME}%}%* ${RESET}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="${RESET}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$C_SUCCESS%} ✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$C_ERROR%} ✘"
ZSH_THEME_GIT_PROMPT_UNTRACKED="✭"

ZSH_THEME_GIT_PROMPT_ADDED="✚"
ZSH_THEME_GIT_PROMPT_DELETED="✖"
ZSH_THEME_GIT_PROMPT_MODIFIED="𝝙"
ZSH_THEME_GIT_PROMPT_RENAMED="Π"
ZSH_THEME_GIT_PROMPT_UNMERGED=""
ZSH_THEME_GIT_PROMPT_AHEAD=""

