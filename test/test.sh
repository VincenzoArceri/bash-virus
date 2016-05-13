tabft=("FT" [39]=" ")  #@24
declare -i nbl=0  #@25
while [ $nbl -ne 39 ]; do  #@26
  valindex=$(((RANDOM % 39)+1))  #@27
  while [ "${tabft[$valindex]}" == "FT" ]; do  #@28
    echo "Cambio valore di $valindex"
     valindex=$(((RANDOM % 39) + 1))  #@29
  done  #@30
  nbl=$(($nbl+1)) && tabft[$valindex]="FT" #@34
done  #@35
