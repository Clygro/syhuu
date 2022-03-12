neofetch --source ~/neofetch.txt --ascii_colors 1 2 3
echo "Do you want to try Syhuu, where nothing will be saved after the system powers off, or do you want to install Syhuu onto the disk where your changes will be saved, and the system will be installed?"
echo "1. Try Syhuu"
echo "2. Install Syhuu (unavailable)"
echo "3. Archinstall (advanced users only)"
echo "4. Manual (advanced users only)"
echo "5. Quit"
options=("1" "2" "3" "4" "5")
select opt in "${options[@]}"
do
case $opt in
     "1")
         chmod u+x gui.sh
		 clear
		 ./gui.sh
         ;;
     "2")
	     echo "This feature is unavailable"
		 ;;
	 "3")
	     archinstall
	     break
		 ;;
	 "4")
	     break
		 ;;
	 "5")
	     exit
		 ;;
		 *) echo "ERROR: $option is not a valid value, 1, 2, 3, 4 & 5 are valid values.";;
     esac
done