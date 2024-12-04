alias myip="/home/unit0/bsd_i3/scripts/aliases/myip"
alias weather="/home/unit0/bsd_i3/scripts/aliases/weather.sh"
alias blake="/home/unit0/bsd_i3/scripts/aliases/blake /home/unit0/.shadow/.tkns/init"
alias token='nvim ~/.shadow/.tkns/init'
alias out2="/home/unit0/bsd_i3/scripts/aliases/out2.sh"
alias out10="/home/unit0/bsd_i3/scripts/aliases/out10.sh"
alias burn="/home/unit0/bsd_i3/scripts/aliases/burn.sh"
alias uwu='fastfetch | lolcat'
alias p='ping 1.1.1.1'
alias st='speedtest'
alias tg='telegram-desktop &'
alias ff='fastfetch'
alias t='date'
alias ss='flameshot gui'
alias udpo="/home/unit0/bsd_i3/scripts/aliases/udpo.sh"
alias fire="/home/unit0/bsd_i3/scripts/aliases/fire.sh"
alias reb="doas shutdown -r now"
alias pof="doas shutdown -p now"
alias slp="sleep 10 && doas acpiconf -s 3"

function qcd
    switch "$argv[1]"
        case scr
            cd /home/unit0/bsd_i3/scripts
        case cfg
            cd /home/unit0/bsd_i3/conf
        case sha
            cd /home/unit0/.shadow
        case uconf
            cd /home/unit0/user_files/.u_config
        case shell
            cd /home/unit0/user_files/shell
        case '*'
            echo "qcd: unknown key '$argv[1]'"
            return 1
    end
    pwd
end

complete -c qcd -a "scr cfg sha uconf shell"
