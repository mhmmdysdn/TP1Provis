import 'dart:async';

// Membuat kelas abstrak untuk toko buku
abstract class BookStore {
 String name;
 List<Book> books = [];

 BookStore(this.name);

 void addBook(Book book) {
   books.add(book);
 }

 void removeBook(Book book) {
   books.remove(book);
 }

 Future<List<Book>> searchBooks(String query);
}

// Membuat kelas konkret untuk toko buku online
class OnlineBookStore extends BookStore {
 OnlineBookStore(String name) : super(name);

 @override
 Future<List<Book>> searchBooks(String query) {
   // Simulasikan pencarian buku secara asinkron
   return Future.delayed(Duration(seconds: 2), () {
     return books.where((book) => book.title.toLowerCase().contains(query.toLowerCase())).toList();
   });
 }
}

// Membuat kelas untuk buku
class Book {
 String title;
 String author;
 double price;

 Book(this.title, this.author, this.price);
}

void main() async {
 // Membuat instance dari toko buku online
 BookStore bookStore = OnlineBookStore('Toko Buku Online');

 // Menambahkan beberapa buku ke toko
 bookStore.addBook(Book('Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 10.99));
 bookStore.addBook(Book('The Lord of the Rings', 'J.R.R. Tolkien', 15.99));
 bookStore.addBook(Book('To Kill a Mockingbird', 'Harper Lee', 8.99));

 // Mencari buku dengan kata kunci 'Harry'
 print('Mencari buku dengan kata kunci "Harry"...');
 List<Book> searchResults = await bookStore.searchBooks('Harry');
 print('Hasil pencarian:');
 searchResults.forEach((book) => print('${book.title} by ${book.author}'));

 // Mencari buku dengan kata kunci 'rings'
 print('\nMencari buku dengan kata kunci "rings"...');
 searchResults = await bookStore.searchBooks('rings');
 print('Hasil pencarian:');
 searchResults.forEach((book) => print('${book.title} by ${book.author}'));
}