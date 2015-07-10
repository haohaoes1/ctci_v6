totals=(9 8 6 12 8 10 9 14 8 11 6 11 8 7 7 26 26)
chapters=(01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17)

rm README.md
echo "Cracking the Coding Interview problems\n" >> README.md
for (( i=0; i<=16; i++  ))
do
  x=`echo */*/* | tr " " "\n" | grep  -E "((ch${chapters[$i]}.*)(java|c|cpp|txt)$)" | wc -l | bc`
  echo "ch${chapters[$i]} - ${x} / ${totals[$i]}" >> README.md
done

echo "\nTotal" >> README.md
echo */*/* | tr ' ' '\n' | grep -E "((\w*)(java|c|cpp|txt)$)" | wc -l | bc | tr -d "\n" >> README.md
echo " / 189 problems\n" >> README.md