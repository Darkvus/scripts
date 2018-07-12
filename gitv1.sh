

#!/bin/bash
# 

PS3='Porfavor elige una opcion: '
options=("Clone" "Add all" "Push" "Pull" "Commit" "Status Git" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Clone")
            echo "Introduce la URL del repositorio:"
            read repo
            git clone $repo
            ;;
        "Add all")
            git add -A
            ;;
        "Push")
            git push
            ;;
	"Pull")
            git pull
            ;;
	"Commit")
            echo "Introduzca su commit"
            read commit
            git commit -m "$commit"
            ;;
	"Status Git")
            git status
            ;;

        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
