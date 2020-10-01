#!/bin/bash
if [[ -f ~/.bashrc ]]; then
 . ~/.bashrc
fi
SOURCEFILEDIR="$HOME/bopisxml/v2/srcfiles"

for i in $SOURCEFILEDIR/*.xml; 
do 
##echo $i; 
k=`cat $i|grep -v "have 0 "|wc -l`
##j=`echo $i|awk -F! '{print $3}'|awk -Fst '{print $2}'|awk -Fp '{print $1}'`;
j=`echo $i|awk -FST '{print $2}'|awk -FP '{print $1}'`;
##echo $j;
content="<store>$j</store>";
##echo $content;
if [ $k = 17 ]
then
sed "/You/ i  `echo $content`" $i ;
fi

done;

