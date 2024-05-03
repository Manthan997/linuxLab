echo "Enter a number: "
read num

# Initialize the factorial to 1
factorial=1

# Check if the number is negative
if [ $num -lt 0 ]
then
    echo "Error: Factorial is not defined for negative numbers."
    break
fi

# Calculate the factorial using a loop
for ((i=1; i<=num; i++))
do
    factorial=$((factorial * i))
done

echo "The factorial of $num is: $factorial"




#counter=1
#while [ $counter -le $num ]
#do
#   factorial=$((factorial * counter))
#  counter=$((counter + 1))
#done

#echo "The factorial of $num is: $factorial"
