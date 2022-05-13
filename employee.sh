echo filename is $1
echo 1st ans
awk '{print $3}' $1 | uniq
echo 2nd ans
awk '$3~/^HR$/ {print $4}' $1 | sort -r | head -1
echo 3rd ans
awk '{print $2}' $1 | uniq -d
echo 4th ans
awk 'BEGIN {sum=0;} {sum=sum+$4;} END{print sum}' $1
