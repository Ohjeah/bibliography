mv $1 $1.in
betterbib-sync $1.in | betterbib-journal-abbrev | betterbib-format - $1
rm $1.in
