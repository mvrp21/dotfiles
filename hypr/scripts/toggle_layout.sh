curr_layout=$(hyprctl getoption input:kb_layout | awk 'NR==1{ print $2 }')
if [[ "$curr_layout" == "us" ]]; then
    hyprctl keyword input:kb_layout br >/dev/null
else
    hyprctl keyword input:kb_layout us >/dev/null
fi
