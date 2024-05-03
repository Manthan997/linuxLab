cube() {
    echo $(($1 * $1 * $1))
}

# Read a 5-digit number from user input
read -p "Enter a 5-digit number: " number

# Check if the input is exactly 5 digits
if ! [[ $number =~ ^[0-9]{5}$ ]]; then
    echo "Invalid input. Please enter a 5-digit number."
    exit 1
fi

# Initialize sum variable
sum=0

# Loop through each digit of the number and calculate the cube
for (( i=0; i<${#number}; i++ )); do
    digit=${number:i:1}
    sum=$((sum + $(cube $digit)))
done

echo "Sum of the cubes of the digits of $number is: $sum"
