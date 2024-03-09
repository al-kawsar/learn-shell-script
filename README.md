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

#### #3 Komentar

[`comment.sh`](comment.sh)

```bash
#! /usr/bin/bash

# ini komen
echo "skript bukan komen" # ini masih komen

# Print Hello World
echo "Hello, World"
```
---
Di Bash, komentar dimulai dengan tanda `#` dan berlaku hingga akhir baris. Semua teks setelah tanda `#` dianggap sebagai komentar dan tidak diproses oleh interpreter shell.

#### #4 Mengoper Argumen

[`pass_arguments.sh`](pass_arguments.sh)

Dalam Bash, Anda dapat menggunakan argumen baris perintah yang disebut sebagai `$1`, `$2`, `$3`, dan seterusnya untuk mengambil nilai yang diberikan saat menjalankan skrip. Argumen ini memungkinkan Anda memberikan input langsung dari baris perintah saat menjalankan skrip Bash.

```bash
# Learn Pass Arguments to a Bash-Script

#! /usr/bin/bash

echo $0 $1 $2 $3 ' > echo $1 $2 $3'

# this arguments variable
args=("$@")

echo ${args[0]} ${args[1]} ${args[2]}

# Mencetak semua item Argumen
echo $@

# Jumlah Argumen
echo $#
```
---
- `$0`, `$1`, `$2`, dan `$3` adalah variabel yang digunakan untuk menyimpan argumen baris perintah yang diberikan saat menjalankan skrip. `$0` adalah nama skrip itu sendiri.
- `args=("$@")` membuat argumen `args` yang berisi semua argumen baris perintah yang diberikan saat menjalankan skrip.
- `echo ${args[0]} ${args[1]} ${args[2]}` mencetak nilai dari argument `args`.
- Perintah `echo $@` digunakan untuk mencetak semua argumen `args`.
- Perintah `echo $#` digunakan untuk mencetak jumlah total argumen baris perintah yang diberikan saat menjalankan skrip.