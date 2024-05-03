		#REPLACE SAMPLE.TXT WITH YOUR FILE NAME

# echo "Display Line,Words And Character Count : "
#wc sample.txt

# echo "Number of Lines : "
#wc -l sample.txt

# echo "Number of Words : "
#wc -w sample.txt

#echo "Number of Characters : "
#wc -m sample.txt

#echo "Number of Bytes : "
#wc -c sample.txt

#echo "Length of longest line in the Sample.txt : "
#wc -L sample.txt
# 			OR
#awk '{print length($0)}' sample.txt | sort -n | tail -1


# AWK EXPALINATION
#This command uses awk to print the length of each line in the file, 
#pipes the output to sort -n to sort the line lengths numerically, 
#and then tail -1 displays the last line, which is the length of the longest line.
