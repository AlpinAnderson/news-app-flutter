import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16.0),
              Text(
                'Tentang Aplikasi Berita',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                'Aplikasi Berita adalah aplikasi yang memberikan akses cepat dan mudah untuk membaca berita terkini dari berbagai sumber terpercaya. Dengan aplikasi ini, Anda dapat tetap terhubung dengan berita terbaru di berbagai kategori seperti lokal, kesehatan, hiburan, dan internasional.',
                style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
              ),
              SizedBox(height: 32.0),
              Text(
                'Fitur Aplikasi Berita:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.check, color: Colors.green),
                title: Text('Tampilan yang bersih dan intuitif untuk membaca berita dengan nyaman.'),
              ),
              ListTile(
                leading: Icon(Icons.check, color: Colors.green),
                title: Text('Kategori berita yang lengkap untuk memudahkan pencarian berita sesuai minat Anda.'),
              ),
              ListTile(
                leading: Icon(Icons.check, color: Colors.green),
                title: Text('Pembaruan berita secara real-time agar Anda selalu mendapatkan informasi terbaru.'),
              ),
              ListTile(
                leading: Icon(Icons.check, color: Colors.green),
                title: Text('Dukungan untuk mengatur pengingat agar Anda tidak ketinggalan berita penting.'),
              ),
              SizedBox(height: 32.0),
              Text(
                'Tentang Kami',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                'Aplikasi Berita dibuat oleh tim pengembang yang berdedikasi untuk memberikan pengalaman terbaik kepada pengguna dalam mengakses dan membaca berita. Kami berkomitmen untuk menyediakan konten berita yang berkualitas dan terpercaya.',
                style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
              ),
              SizedBox(height: 32.0),
              Divider(thickness: 5,color: Colors.blue,),
              Text(
                'Kontak Kami',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('Email: newsApp.com', style: TextStyle(fontSize: 16.0, color: Colors.grey[800])),
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue),
                title: Text('Nomor Telepon: 123-456-7890', style: TextStyle(fontSize: 16.0, color: Colors.grey[800])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
