#!/bin/bash
# Authors : Aashay Choksi
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a regular expression:"
read rE
echo "Enter a file name"
read fN
grep $rE $fN

#counting number of phone numbers
grep -Ec "[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt
#search for blocks of 3 and 4 numbers separated by '-'

#counting number of emails
grep -Ec "[A-Za-z0-9]*@[a-z]*.com$" regex_practice.txt

#find phone numbers with '303' and store in "phone_results.txt"
grep -Ec "303-[0-9]{3}-[0-9]{4}" regex_practice.txt > phone_results.txt

#find emails from 'geocities.com' and store in "email_results.txt"
grep -Ec "[A-Za-z0-9]*@geocities.com" regex_practice.txt > email_results.txt

#find 'command-line regular expression' and store in "command_results.txt"
grep -Ec rE fN > command_results.txt
