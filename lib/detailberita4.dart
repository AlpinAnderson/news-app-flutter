import 'package:flutter/material.dart';
import 'main.dart';

class detail4 extends StatefulWidget {
  const detail4({super.key});

  @override
  State<detail4> createState() => _detail4State();
}

class _detail4State extends State<detail4> {
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
              Text(
                  '5 Efek Samping Pengobatan Kanker Darah yang Perlu Diketahui',
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
                    '14 July 2023',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.category_rounded, color: Colors.white),
                  Text('Health', style: TextStyle(color: Colors.white))
                ],
              ),
              Divider(thickness: 5, color: Colors.pink),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                    'Untuk diketahui, macam cara mengobati kanker darah, seperti dikutip dari Cleveland Clinic meliputi: Kemoterapi: -) pengobatan kanker darah primer yang membunuh sel kanker baik untuk memperlambat perkembangan penyakit atau menghilangkan kanker.-) Terapi radiasi: radiasi menargetkan sel-sel abnormal, merusak DNA mereka, sehingga tidak dapat bereproduksi.-) Terapi sel T CAR: mengubah limfosit sel T menjadi pengobatan kanker darah Imunoterapi: membantu tubuh Anda membuat lebih banyak sel kekebalan atau membantu sel kekebalan yang ada menemukan dan membunuh sel kanker.-) Terapi yang ditargetkan: pengobatan kanker ini menargetkan perubahan atau mutasi genetik yang mengubah sel sehat menjadi sel abnormal.-) Transplantasi sel punca atau transplantasi sumsum tulang: prosedur medis untuk mengganti sumsum tulang yang rusak.',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              )
            ],
          ),
        ));
  }
}
