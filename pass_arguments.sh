# Learn Pass Arguments to a Bash-Script

#! /bin/bash

# echo $0 $1 $2 $3 ' > echo $1 $2 $3'

# this array variable
args=("$@")

echo ${args[0]} ${args[1]} ${args[2]}

# Mencetak semua item array
echo $@

# Jumlah Array
echo $#