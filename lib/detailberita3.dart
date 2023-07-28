import 'package:flutter/material.dart';
import 'main.dart';

class detail3 extends StatefulWidget {
  const detail3({super.key});

  @override
  State<detail3> createState() => _detail3State();
}

class _detail3State extends State<detail3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsHomePage()),
              );
            },
          ),
          title: Text('News App',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  margin: EdgeInsets.fromLTRB(250, 0, 250, 0),
                  width: 1000,
                  height: 200,
                  child: Image(
                      image: NetworkImage(
                          'data:image/jpeg;base64,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'))),
              Text('Tina Toon Ungkap Alasan Menikah Diam-diam, Ternyata...',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Divider(thickness: 5, color: Colors.pink),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    'Gilbert',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.calendar_today, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    '13 July 2023',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.category_rounded, color: Colors.white),
                  Text('Entertainment', style: TextStyle(color: Colors.white))
                ],
              ),
              Divider(thickness: 5, color: Colors.pink),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                    'Tina Toon mengungkapkan ada beberapa kondisi yang membuat dirinya harus menikah. Salah satunya, pelantun Bolo Bolo itu belum lama ini kehilangan sang nenek.Berdasarkan tradisi Chinese, Tina Toon seharusnya menunda pernikahan dalam kurun 3 tahun. "Setelah kepergian Oma dalam tradisi Chinese (yang aku dan keluarga suami juga masih kental banget), intinya seharusnya menunda pernikahan selama 3 tahun," kata Tina Toon, dalam keterangan unggahan dalam akunnya di Instagram. Namun, setelah berdiskusi dengan keluarga, pernikahan Tina Toon tetap dilaksanakan, dengan konsep intimate.',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              )
            ],
          ),
        ));
  }
}
