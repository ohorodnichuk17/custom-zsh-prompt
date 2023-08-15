#PS1_EMOJIS=("🌈" "🚀" "🍕" "🎸" "🔥" "🍦" "🦄")
#NUMBER_OF_EMOJIS=${#PS1_EMOJIS[@]}
#THEME_DELIMITER="%{$fg_bold[hexcolor=#FFA500]%}➜%{$reset_color%}"

#if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
#  PROMPT='
#%(?, ,%{$fg[red]%}FAIL: $?
#%{$reset_color%})
#${PS1_EMOJIS[$RANDOM % $NUMBER_OF_EMOJIS]}  $THEME_DELIMITER '
#else
#  PROMPT='${PS1_EMOJIS[$RANDOM % $NUMBER_OF_EMOJIS]}  $THEME_DELIMITER '
#fi

#github_url() {
#  GITHUB_ICON=""

#  if [[ "$PWD" == *"github.com"*/*/* ]]; then
#    echo "%{$fg_bold[blue]%} %3/ $GITHUB_ICON"
#    return
#  fi

#  echo ""
#}

#if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
#  RPROMPT='$(github_url)'
#fi

#PS1_EMOJIS=("🇺🇦")
#NUMBER_OF_EMOJIS=${#PS1_EMOJIS[@]}
#THEME_DELIMITER="%F{#FFA500}➜%f"

#if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
#  PROMPT='
#%(?, ,%{$fg[red]%}FAIL: $?
#%{$reset_color%})
#${PS1_EMOJIS[$RANDOM % $NUMBER_OF_EMOJIS]}  $THEME_DELIMITER '
#else
#  PROMPT='${PS1_EMOJIS[$RANDOM % $NUMBER_OF_EMOJIS]}  $THEME_DELIMITER '
#fi

#github_url() {
#  GITHUB_ICON=""

#  if [[ "$PWD" == *"github.com"*/*/* ]]; then
#    echo "%{$fg_bold[blue]%} %3/ $GITHUB_ICON"
#    return
#  fi

#  echo ""
#}

#if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
#  RPROMPT='$(github_url)'
#fi


PS1_EMOJI="🇺🇦"
THEME_DELIMITER="%F{#FFA500}➜%f"

if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
  PROMPT='
%(?, ,%{$fg[red]%}FAIL: $?
%{$reset_color%})
$PS1_EMOJI  $THEME_DELIMITER '
else
  PROMPT='$PS1_EMOJI  $THEME_DELIMITER '
fi

github_url() {
  GITHUB_ICON=""

  if [[ "$PWD" == *"github.com"*/*/* ]]; then
    echo "%{$fg_bold[blue]%} %3/ $GITHUB_ICON"
    return
  fi

  echo ""
}

if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
  RPROMPT='$(github_url)'
fi
