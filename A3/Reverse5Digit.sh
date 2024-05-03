echo "Enter a 5-digit Number : "
read num

if [ ${#num} -ne 5 ];then
   echo " Error :Please Enter a 5-digit Number "
   exit 1
fi

reversed=0
original=$num

while [ $num -gt 0 ]; do 
        remainder=$((num % 10))
	reversed=$((reversed * 10 + remainder))
	num=$((num / 10))
done

echo " The reverse of Given 5-digit Number $original is $reversed "
