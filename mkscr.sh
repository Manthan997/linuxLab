
#!/bin/bash

# EXP ID
# >

# AIM
# >take name check if file exists
# >yes > open or not
# >no > create with template + change permission + open

# CODE
name="$1.sh"

if [ -e $name ]
then
	#file exists
	read -p "file already exists!!! Wanna open it?(Y/n)" ans
	
	case $ans in
	        [Nn]* ) exit;;
        	* ) nvim $name
    	esac

else
	#make a new file
	echo "#!/bin/bash

# EXP ID
# >

# AIM
# >

# CODE
" > $name
	chmod u+x $name
#	nvim $name
fi

