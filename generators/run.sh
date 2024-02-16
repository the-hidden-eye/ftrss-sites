#!/bin/bash

for group in $(ls -1 |grep -v run.sh);do 
find "$group/" -mindepth 1 -maxdepth 1|grep -v "^/$template$" |grep -v ^$|while read domain;
      do 
      echo "$group/template/filter.txt"  ./$( basename $domain) ">" ../.$( basename $domain)
      ( cat "$group/template/filter.txt";echo ;cat "$domain" ; )|tee ../$( basename $domain) > ../.$( basename $domain)
  done

done