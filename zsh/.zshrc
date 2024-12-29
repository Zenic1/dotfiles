pokemon-colorscripts -r --no-title
while read file
do 
  source "$ZDOTDIR/$file.zsh"
done <<-EOF
env
aliases
options
plugins
keybinds
EOF

