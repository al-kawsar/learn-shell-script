#! /usr/bin/bash

# Belajar Input Shell

echo -n "username : "
read username
read -sp 'password : ' password

echo -e '\n'

echo "your username : $username"
echo "your password : $password"