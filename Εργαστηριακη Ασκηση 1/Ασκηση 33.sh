 cat coins.txt | head -n1 |awk '{print $1}' 
 tac coins.txt | head -n1 | sed -e 's/^.*\t//' 