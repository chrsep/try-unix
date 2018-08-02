#! /bin/bash
head -4 I053040008.pa4.sed >> test2.sed
cat tempfile.pa4 | tr "\\" "%" | sed -f test2.sed
