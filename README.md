# Belajar Shell Script

### Pendahuluan
Jadi tujuan saya membuat repo ini untuk mendokumentasikan pembelajaran skrip shell dari YouTube, termasuk skrip, catatan dll.

### Apa itu Shell ?

> Shell adalah sebuah program penterjemah yang berfungsi sebagai jembatan antara user dan kernel.

Shell adalah program antarmuka antara pengguna dan sistem operasi. Melalui shell, pengguna bisa memberikan perintah-perintah dalam bentuk teks untuk menjalankan program, mengelola file, dan melakukan tugas lainnya pada komputer. Contoh shell populer, diantaranya adalah :

- Bourne shell(sh)
- C shell(csh)
- Korn shell(ksh)
- Bourne again shell(bash)
- dsb

Pada repository ini, saya menggunakan bash shell GNU yang merupakan pengembangan dari bourne shell.

### Apa itu Shell Script ?

> Shell Script adalah sebuah bahasa pemrograman yang disusun berdasarkan perintah - perintah shell.

Jika anda menggunakan linux, maka menyusun perintah - perintah shell di dalam sebuah file shell sama seperti ketika anda membuat sebuah aplikasi.

### File

#### #1 Mencetak Teks ke Layar

[`hello.sh`](hello.sh)

```bash
#! /usr/bin/bash

echo "Hello, World!"
```
---
- `#! /usr/bin/bash`: Ini disebut sebagai shebang atau hashbang. Ini memberi tahu sistem operasi bahwa script ini harus dieksekusi menggunakan bash (Bourne Again Shell).
- `echo "Hello, World!"`: Perintah `echo` digunakan untuk mencetak teks ke terminal. Dalam kasus ini, teks yang dicetak adalah "Halo, dunia!".

#### #2 Input `read`

[`input.sh`](input.sh)

```bash
#! /usr/bin/bash

# Belajar Input Shell

echo -n "username : "
read username
read -sp 'password : ' password

echo -e '\n'

echo "your username : $username"
echo "your password : $password"
```
---
- `echo -n "username : "`: Ini mencetak teks "username :" tanpa baris baru (newline) di akhirnya.
- `read username`: Ini akan menunggu pengguna untuk memasukkan username dan menyimpannya dalam variabel `username`.
- `read -sp 'password : ' password`: Ini mencetak teks "password :" tanpa baris baru (newline) di akhirnya, serta opsi `-s` menyebabkan input tidak ditampilkan saat diketikkan oleh pengguna (cocok untuk password). Input yang dimasukkan oleh pengguna kemudian disimpan dalam variabel `password`.