echo "plop"
fini=0
while [ $fini = 0 ]
do
	echo "menu"
	echo "1 - creer utilisateur"
	echo "2 - supprimer utilisateur"
	echo "3 - quitter"

	read choix
	case $choix in
		"1") echo "nom d'utilisateur"
			read nom
			sudo adduser $nom;;
		"2") echo "nom d'utilisateur"
			read nom
			sudo userdel -f -r $nom;;
	"3") fini=1;;
esac
done
