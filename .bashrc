export PS1="\[\e[32m\]\$(date +'%H:%M:%S') \[\e[0m\][\u@\h] \w > "

alias myip="bash /home/unit0/bsd_i3/scripts/aliases/myip"
alias weather="bash /home/unit0/bsd_i3/scripts/aliases/weather.sh"
alias blake="bash /home/unit0/bsd_i3/scripts/aliases/blake /home/unit0/.shadow/.tkns/init"
alias token='nvim ~/.shadow/.tkns/init'
alias out2="bash /home/unit0/bsd_i3/scripts/aliases/out2.sh"
alias out10="bash /home/unit0/bsd_i3/scripts/aliases/out10.sh"
alias burn="bash /home/unit0/bsd_i3/scripts/aliases/burn.sh"
alias uwu='fastfetch | lolcat'
alias p='ping 1.1.1.1'
alias st='speedtest'
alias tg='telegram-desktop &'
alias ff='fastfetch'
alias t='date'
alias ss='flameshot gui'
alias udpo=" bash /home/unit0/bsd_i3/scripts/aliases/udpo.sh"
alias fire="bash /home/unit0/bsd_i3/scripts/aliases/fire.sh"
alias reb="doas shutdown -r now"
alias pof="doas shutdown -p now"
alias slp="sleep 10 && doas acpiconf -s 3"

qcd() {
    case "$1" in
        scr)
            cd /home/unit0/bsd_i3/scripts
            ;;
        cfg)
            cd /home/unit0/bsd_i3/conf
            ;;
        sha)
            cd /home/unit0/.shadow
            ;;
        uconf)
            cd /home/unit0/user_files/.u_config
            ;;
        shell)
            cd /home/unit0/user_files/shell
            ;;
        *)
            echo "qcd: unknown key '$1'"
            return 1
            ;;
    esac
    pwd
}

complete -W "scr cfg sha uconf shell" qcd
