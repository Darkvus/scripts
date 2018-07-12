

#!/bin/bash
#@author DaRkVuS

PS3='Elige tu opcion: '
options=("Ubuntu" "Mac OSx" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Ubuntu")
            sudo apt-get install dialog
            ;;
        "Mac OSx")
            sudo brew install dialog
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
