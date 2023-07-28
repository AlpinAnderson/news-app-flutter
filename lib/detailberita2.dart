import 'package:flutter/material.dart';
import 'main.dart';

class detail2 extends StatefulWidget {
  const detail2({super.key});

  @override
  State<detail2> createState() => _detail1State();
}

class _detail1State extends State<detail2> {
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
              Text('China: NATO Adalah Pembuat Onar yang Sebenarnya',
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
                    'Alpin Anderson Nainggolan',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.calendar_today, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    '14 July 2023',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.category_rounded, color: Colors.white),
                  Text('International', style: TextStyle(color: Colors.white))
                ],
              ),
              Divider(thickness: 5, color: Colors.pink),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                    'China blakblakan menyebut NATO sebagai aliansi pembuat onar yang sejati. Komentar itu sebagai balasan setelah Beijing dituduh mengejar kebijkan yang menantang kepentingan aliansi militer pimpinan Amerika Serikat (AS) tersebut.Seperti dibuktikan oleh fakta yang tak terhitung jumlahnya, pembuat onar yang sebenarnya tidak lain adalah NATO, kata Perwakilan Tetap China untuk PBB Zhang Jun',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              )
            ],
          ),
        ));
  }
}
