#! /bin/bash
#@author Alejadnro Caraballo Garcia
#User Git DaRkVuS

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Git Utilidades"
TITLE="Opciones"
MENU="Porfavor inserta tu opcion:"

options=(1 "Clone" 2 "Add all" 3 "Commit" 4 "Push" 5 "Pull" 6 "Status Git")

selector=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${options[@]}" \
                2>&1 >/dev/tty)
clear
case $selector in
        1)
            echo "Introduce la URL del repositorio:"
	    read repo
	    git clone $repo
            ;;
        2)
            git add -A
            ;;
        3)
            echo "Introduzca su commit"
	    read commit
	    git commit -m "$commit"
            ;;
	4)
            git push
            ;;
	5)
            git pull
            ;;
	6)
            git status
            ;;
        *) echo "Opcion no permitida $REPLY";;
esac

