#i/bin/bash

echo -e "which opration you want to : " 
echo -e "1. lenght \n2. Reverse \n3. Compare string\n4. joint string" 
echo -e "5. occurence of character\n6. Get substring\n7. convert lowercase\n8. occurance of word"

read ch

echo "enter string " 
read str

case $ch in 
1) len=`echo $str | wc -c` 
echo "len is $len"
;;

2) rstr=`echo $str | rev` 
echo "reversed string is $rstr "
;;

3) echo "enter secound string " 
read str2

if [ "$str" = "$str2" ]; 
then 
echo "strings are equal" 
else 
echo "strings are not equal" 
fi
;;

4) 
echo "enter secound sring" 
read cstr 
constr="$str$cstr" 
echo "jointed string is $constr"
;;

5) 
echo "which charcter do you to count" 
read c
echo $str | grep -o "$c" | wc -l
;;

6)
echo -e "Enter the the postion and length of string;"
read POS LEN
echo "The substring is = ${str:$POS:$LEN}"
;;
7)
        echo -e "The Uppercase string is = $str\n"
        echo "The lowercase string is = ${str,,}"
        ;;
8)

echo  "Enter word for finding occouance: "
read  word
echo $str1 | grep -o "$word" | wc -l
;;

esac



