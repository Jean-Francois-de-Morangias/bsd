if test -f $HOME/.config/fish/aliases.fish
    source $HOME/.config/fish/aliases.fish
end

function fish_prompt
    set_color green
    echo -n (date +'%H:%M:%S')' '
    set_color normal
    echo -n '['(whoami)'@'(hostname | cut -d . -f 1)'] '
    set_color blue
    echo -n (pwd) ' '
    set_color normal
    echo '> '
end
