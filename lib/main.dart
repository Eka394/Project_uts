import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 's1_agroteknologi_detail.dart';
import 's1_agribisnis_detail.dart';
import 's2_agroteknologi_detail.dart';
import 's2_agribisnis_detail.dart';
import 's3_agribisnis_detail.dart';
import 'datadiri_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas Pertanian',
      home: ProfilFakultasPertanian(),
    );
  }
}

class ProfilFakultasPertanian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Fakultas Pertanian',
          style: TextStyle(color: Colors.white), // Warna teks judul AppBar
        ),
        backgroundColor: Color(0xFF00775C), // Warna AppBar
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'logo.png', // Ganti dengan path gambar yang sesuai
        width: 70, // Sesuaikan ukuran lebar gambar dengan kebutuhan 
        height: 70, // Sesuaikan ukuran tinggi gambar dengan kebutuhan 
      ),
      SizedBox(width: 16), // Menambahkan jarak antara gambar dan teks
      Text(
        'Profil Fakultas Pertanian UPN',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur merupakan salah satu lembaga pendidikan tinggi bidang pertanian di Indonesia yang berdiri sejak 17 Mei 1968. Fakultas Pertanian ini merupakan salah satu dari 7 fakultas di UPN "Veteran" Jawa Timur yang terdiri dari program studi :',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Card untuk Program Studi S1 agroteknologi
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S1AgroteknologiDetailPage('Program Studi S1 Agroteknologi')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color(0xFF00775C), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('agro.png', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Program Studi S1 Agroteknologi',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S1 agribisnis
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S1AgribisnisDetailPage('Program Studi S1 Agribisnis')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color(0xFF00775C), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('agri.png', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Program Studi S1 Agribisnis',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S2 agroteknologi
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S2AgroteknologiDetailPage('Program Studi S2 Agroteknologi')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color(0xFF00775C), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('agro.png', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Program Studi S2 Agroteknologi',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S2 agribisnis
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S2AgribisnisDetailPage('Program Studi S2 Agribisnis')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color(0xFF00775C), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('agri.png', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Program Studi S2 Agribisnis',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Card untuk Program Studi S3 agribisnis
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => S3AgribisnisDetailPage('Program Studi S3 Agribisnis')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.white, // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color(0xFF00775C), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset('agri.png', fit: BoxFit.cover),
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Program Studi S3 Agribisnis',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Website Resmi: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL();
                      },
                      child: Text(
                        'https://faperta.upnjatim.ac.id/',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Data Diri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            // Card untuk data profil
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatadiriDetailPage('Identitas Diri')),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: const Color.fromRGBO(255, 255, 255, 1), // Warna latar belakang Card
                elevation: 4, // Elevation untuk efek shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Mengatur sudut border
                  side: BorderSide(
                    color: Color(0xFF00775C), // Warna garis tepi
                    width: 2, // Ketebalan garis tepi
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gambar
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0),
                        child: CircleAvatar(
                          radius: 40, // Radius lingkaran
                          backgroundImage: AssetImage('vivi.png'), // Gambar
                        ),
                      ),
                      // Teks
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vivi Eka Juliatus Sholihah',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Menambahkan jarak di bawah terakhir agar ada ruang untuk guliran
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://faperta.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}