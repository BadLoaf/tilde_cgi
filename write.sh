#!/bin/bash

first_half=$(sed -n "1,/print <<HTML_PAGE;/p" index.cgi)
echo "$first_half" >index.cgi
cat index.html >>index.cgi
echo "HTML_PAGE" >>index.cgi

echo "successfully copied!"
