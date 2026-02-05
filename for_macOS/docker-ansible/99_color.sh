ESC="\033["
ESCEND="\33m"

COLOR_YELLOW="${ESC}0;33m${ESCEND}"
COLOR_OFF="${ESC}0;39m${ESCEND}"

function yprintf () {
    printf "${COLOR_YELLOW}$1${COLOR_OFF}"
}

export -f yprintf

