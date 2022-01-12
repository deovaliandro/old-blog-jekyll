---
title: Struktur Dasar
author: Deo Valiandro
date: '2021-05-13'
layout: default
---

Java adalah bahasa pemrograman level tinggi, robust (mempunyai Garbage Collector
dan Exception Handling), object-oriented dan secure/stable tetapi tidak pure
object-oriented language karena masih mendukung primitive data types seperti
int, char, dll. 

Sintaks Java mirip dengna C/C++, tetapi Java tidak mensupport low-level
programming seperti pointer (sebenarnya Java punya pointer. Semua turunan object
adalah pointer. Akan tetapi, anda bisa jadi programmer Java profesional tanpa
perlu tahu fakta ini<sup>[1]</sup>). Kode Java selalu ditulis didalam sebuah
class dan objek.


[1]: https://jekjektuanakal.my.id/post/peta-jalan-pejuang-cpp-2/

## Struktur program

Struktur dasar sebuah bahasa pemrograman Java adalah sebagai berikut:

```java
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
    }
}
```

`class Main` Adalah class utama, nama `Main` harus sesuai dengan nama file.
Aturan penulisannya adalah dengan menggunakan huruf kapital di huruf pertama.
Misalnya: `Main`, `Utama`, dsb-nya.

`public static void main(String args[])` adalah kode utama yang akan dijalankan
ketika kita menjalankan sebuah program Java.

## Aturan Penamaan

Dalam penulisan nama variabel perlu diperhatikan terdapat beberapa aturan khusus
dalam Java yang harus dipatuhi seperti:

1. tidak boleh diawali dengan angka,
2. tidak boleh disertai symbol khusus seperti @,!,*,#,
3. tidak boleh menggunakan reserved word sebagai nama variable,
4. boleh diawali dengan underscore atau symbol $, dan
5. nama variable tidak boleh mengandung spasi.

Menurut Convention over configuration Java penulisan nama variable menggunakan
lower camel case (misalnya namaVariabel), dan penulisan nama class menggunakan
upper camel case (misalnya Main).

## Menjalankan program

Java adalah bahasa yang dicompile terlebih dahulu sebelum dirun.

Untuk meng-compile java:

```bash
javac NamaFile.java
```

dan kemudian akan menghasilkan sebuah file dengan nama `NamaFile.class`.
File inilah yang kemudian dijalankan dengan menggunakan perintah:

```bash
java NamaFile
```
perhatikan, untuk menjalankan, tidak perlu menggunakan `NamaFile.class`, cukup
dengan menggunakan `NamaFile` saja.