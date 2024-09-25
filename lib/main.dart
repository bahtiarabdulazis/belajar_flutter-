import 'package:flutter/material.dart';
import 'Page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Mengambil ukuran lebar dan tinggi dari perangkat
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          // Menambahkan gambar sebagai background
          image: DecorationImage(
            image: AssetImage("assets/images/jembatan.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.blue, // Mengatur warna kartu
                elevation: 4, // Menambahkan elevation untuk efek shadow
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue, // Warna kartu
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna shadow
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Arah shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        // Menambahkan CircleAvatar dengan gambar
                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage('assets/images/gueh2.jpg'),
                        ),
                        // Nama siswa
                        Text(
                          "Bahtiar Abdul Azis",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        // Deskripsi
                        Text(
                          "Vocational High School Student at Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        // Tombol untuk menuju ke halaman Page2
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page2(),
                              ),
                            );
                          },
                          child: Text('See More'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
