#! /bin/bash
rm debugfile

echo "<&>\ \[<&>][] ][^] ][^ ]][[^]<&>]<&>]<&>[ ][\ ][^ ][] \]<&>\ ]\n" >> debugfile
./pa4.csh >> debugfile
echo "\n" >> debugfile
./pa4a.csh >> debugfile


