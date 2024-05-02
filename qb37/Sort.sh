cat sample.txt
echo "-----------------
"
echo "Sort with -b option (ignore leading blanks):"
sort -b sample.txt
echo "-----------------
"
echo "Sort with -r option (reverse order):"
sort -r sample.txt
echo "-----------------
"
echo "Sort with -o option (output to a file):"
sort -o sorted_sample.txt sample.txt
cat sorted_sample.txt
echo "-----------------
"
echo "Sort with -n option (numeric sort):"
sort -n sample.txt
echo "-----------------
"
echo "Sort with -M option (month sort):"
sort -M sample.txt
echo "-----------------
"
echo "Sort with -u option (unique sort):"
sort -u sample.txt
echo "-----------------
"
echo "Original content of field_sample.txt:"
cat test1.txt
echo "-----------------
"
echo "Sorting based on the first field:"
sort -k 2 -t , test1.txt
