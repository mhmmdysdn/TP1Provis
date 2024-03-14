# TP1Provis

Muhammad Yusdan Ali
2206847 - C1

# Toko Buku Online

Program ini adalah implementasi sederhana dari sebuah toko buku online yang menerapkan konsep OOP (Object-Oriented Programming) dan asynchronous programming dalam Dart.

## Fitur

- Menambah buku ke dalam toko
- Menghapus buku dari toko
- Mencari buku berdasarkan kata kunci judul

## Implementasi OOP

Program ini menggunakan beberapa kelas untuk mengimplementasikan konsep OOP:

1. `BookStore` (kelas abstrak): Kelas ini menjadi blueprint untuk toko buku. Kelas ini memiliki properti `name` dan `books`, serta metode untuk menambah, menghapus, dan mencari buku.

2. `OnlineBookStore` : Kelas ini mewarisi dari `BookStore` dan mengimplementasikan metode `searchBooks` yang melakukan pencarian buku secara asinkron.

3. `Book`: Kelas ini digunakan untuk merepresentasikan data buku, dengan properti `title`, `author`, dan `price`.

## Implementasi Asynchronous

Program ini menggunakan konsep asynchronous programming untuk menyimulasikan operasi pencarian buku yang memakan waktu, seperti permintaan jaringan.

1. Metode `searchBooks` di kelas `OnlineBookStore` mengembalikan `Future<List<Book>>`, yang menunjukkan operasi asinkron.

2. Pencarian buku dilakukan dengan memanggil `bookStore.searchBooks` dan menunggu hasilnya menggunakan `await`.

3. Simulasi penundaan 2 detik dilakukan dengan `Future.delayed` untuk menyimulasikan operasi asinkron.

## Screenshot
Screenshot ini merupakan bagian dari fitur pencarian, yang mana mencari buku dengan kata kunci.
![Screenshot 2024-03-14 203831](https://github.com/mhmmdysdn/TP1Provis/assets/119798315/2213a4ec-69ac-4517-940c-55f0cd5103b3)
