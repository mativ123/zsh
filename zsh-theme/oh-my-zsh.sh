# Load all of the config files in ~/oh-my-zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file ("$ZSH"/lib/*.zsh); do
  custom_config_file="$ZSH_CUSTOM/lib/${config_file:t}"
  [[ -f "$custom_config_file" ]] && config_file="$custom_config_file"
  source "$config_file"
done
unset custom_config_file

# Load the theme
is_theme() {
  local base_dir=$1
  local name=$2
  builtin test -f $base_dir/$name.zsh-theme
}

if [[ -n "$ZSH_THEME" ]]; then
  if is_theme "$ZSH_CUSTOM" "$ZSH_THEME"; then
    source "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme"
  elif is_theme "$ZSH_CUSTOM/themes" "$ZSH_THEME"; then
    source "$ZSH_CUSTOM/themes/$ZSH_THEME.zsh-theme"
  elif is_theme "$ZSH/themes" "$ZSH_THEME"; then
    source "$ZSH/themes/$ZSH_THEME.zsh-theme"
  else
    echo "[oh-my-zsh] theme '$ZSH_THEME' not found"
  fi
fi
