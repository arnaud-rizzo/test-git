

while [ true ]
do
	echo "menu"
	echo "1 - creer utilisateur"
	echo "2 - supprimer utilisateur"
	echo "3 - quitter"

	read choix
	case $choix in
		"1") echo "nom d'utilisateur"
			read nom
			if id "$nom" &>/dev/null; then echo "erreur l'utilisateur existe deja"
			exit 0
			else sudo adduser $nom
			fi  ;;
		"2") echo "nom d'utilisateur"
			read nom
			if id "$nom" &>/dev/null; then	sudo userdel -f -r $nom
			else 	echo "erreur utilisateur inconu" 
				exit 0
			fi ;;
		"3") exit 0;;
		*) echo "commande non autoriser";;

esac
done
