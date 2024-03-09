#! /usr/bin/bash

echo -e '\nBelajar Variabel di Shell Script \n'

# GLOBAL VARIABLES

echo '--- GLOBAL VARIABLES ---'
echo "BASH :$BASH"
echo "BASH_VERSION :$BASH_VERSION"
echo "HOME :$HOME"
echo "PWD :$PWD"

echo -e '\n'

nama='Andi Muh Raihan Alkawsar'
umur=16
alamat='Jl GB Saraung Lr 254/12 A'
sekolah='SMKN 7 MAKASSAR'
kelas='XI RPL 1'

all="Halo perkenalkan nama saya $nama, sekarang saya berumur $umur. Alamat rumah saya di $alamat. Saya bersekolah di $sekolah kelas $kelas"

echo "Nama : $nama"
echo "Umur : $umur"
echo "Sekolah : $sekolah"
echo "kelas : $kelas"
echo -e "Alamat : $alamat \n"

echo $all


