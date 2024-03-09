#! /usr/bin/bash

echo -n "Masukkan nilai anda: "
read nilai

# Inisialisasi variabel hasil
hasil=''

if [ $nilai -gt 90 ]; then
    hasil='A'
    elif [ $nilai -gt 80 ]; then
    hasil='B'
    elif [ $nilai -gt 70 ]; then
    hasil='C'
else
    hasil='D'
fi

echo 'Anda mendapatkan nilai' $hasil