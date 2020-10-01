#!/bin/bash
if [[ -f ~/.bashrc ]]; then
 . ~/.bashrc
fi
TARGETFILEDIR="$HOME/bopisxml/v2/tgtfiles"
SCRIPTDIR="$HOME/bopisxml/v2"

rm  $TARGETFILEDIR/*.xml
sh $SCRIPTDIR/loopthru_individual_xmlfiles.sh > $TARGETFILEDIR/temp.xml
sed "/POSMessages/ d" $TARGETFILEDIR/temp.xml > $TARGETFILEDIR/temp1.xml
sed "/version/ d" $TARGETFILEDIR/temp1.xml > $TARGETFILEDIR/temp2.xml
sed "1i\ `echo \<POSMessages\>`" $TARGETFILEDIR/temp2.xml > $TARGETFILEDIR/temp3.xml
sed "\$a\ `echo \<\/POSMessages\>`" $TARGETFILEDIR/temp3.xml > $TARGETFILEDIR/bopis.xml


