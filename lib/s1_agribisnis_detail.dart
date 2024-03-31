import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class S1AgribisnisDetailPage extends StatefulWidget {
  final String title;

  S1AgribisnisDetailPage(this.title);

  @override
  _S1AgribisnisDetailPageState createState() =>
      _S1AgribisnisDetailPageState();
}

class _S1AgribisnisDetailPageState extends State<S1AgribisnisDetailPage> {
  bool isProfilExpanded = false;
  bool isVisiExpanded = false;
  bool isMisiExpanded = false;
  bool isAkreditasiExpanded = false;
  bool isKetuaExpanded = false;
  bool isDosenExpanded = false;
  bool isWebsiteExpanded = false;
  bool isPrestasiExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF00775C),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'agri.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8), // Memberikan ruang di antara gambar dan teks
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 47.0),
                      child: Text(
                        'Program Studi S1 Agribisnis',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Memberikan ruang di antara judul dan informasi
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Profil', '', isProfilExpanded, Color(0xFF00775C), Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Visi', '', isVisiExpanded, Color(0xFF00775C), Icons.visibility),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Misi', '', isMisiExpanded, Color(0xFF00775C), Icons.assignment),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Akreditasi', '', isAkreditasiExpanded, Color(0xFF00775C), Icons.star),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Ketua Program Studi', '', isKetuaExpanded, Color(0xFF00775C), Icons.person_pin),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Dosen', '', isDosenExpanded, Color(0xFF00775C), Icons.school),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Laman Website Resmi', '', isWebsiteExpanded, Color(0xFF00775C), Icons.language),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
                child: buildExpansionTile('Prestasi Mahasiswa', '', isPrestasiExpanded, Color(0xFF00775C), Icons.emoji_events),
              ),  
            ],
          ),
        ),
      ),
    );
  }

  Widget buildExpansionTile(String title, String content, bool isExpanded, Color titleBackgroundColor, IconData icon) {
    return Padding(
    padding: const EdgeInsets.only(bottom: 8.0), // Mengatur jarak antara setiap ExpansionTile
    child: Container(
      decoration: BoxDecoration(
        color: titleBackgroundColor, // Memberikan warna latar belakang untuk judul
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), // Melengkungkan sudut kiri atas
          topRight: Radius.circular(15), // Melengkungkan sudut kanan atas
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
          title: Row(
            children: [
              Icon(
                icon,
                color: Colors.white, // Mengubah warna ikon menjadi putih
              ),
              SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Mengubah warna teks judul menjadi putih
                ),
              ),
            ],
          ),
        children: [
            Container(
              color: Colors.white, // Memberikan warna latar belakang untuk konten informasi
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isExpanded && title == 'Profil')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              'Program Studi Agribisnis di UPN "Veteran" Jawa Timur terus menunjukkan kualitasnya dengan meraih akreditasi A untuk program S1 dan S2 pada tahun 2015 dan 2019 serta Unggul di tahun 2023. Selain itu, prestasinya semakin ditingkatkan dengan mendapatkan izin pembukaan Program Doktór Agribisnis pada tahun 2020. Pengakuan Internasional juga diterima melalui akreditasi oleh FIBAA, yang menandai kualitas dan standar yang tinggi dalam penyelenggaraan program studi ini, ini menunjukkan komitmen program studi untuk memberikan pendidikan agribisnis yang berkualitas dan relevan, serta menjadi pemimpin dalam bidang akademik baik di tingkat nasional maupun internasional.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Visi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              'Visi Keilmuan Program Studi Agribisnis, Fakultas Pertanian, UPN “Veteran” Jawa Timur adalah terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Misi')
          Align(
            alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tidak Ada',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ),
          if (isExpanded && title == 'Akreditasi')
          Align(
            alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prodi Agribisnis (S1) terakreditasi Unggul (BAN-PT)',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ),
          if (isExpanded && title == 'Laman Website Resmi')
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
                        _launchWebsite();
                      },
                      child: Text(
                        'https://agribis.upnjatim.ac.id/',
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
          if (isExpanded && title == 'Ketua Program Studi')
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('syarif.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Prof. Dr. Ir. Syarif Imam Hidayat, M.M.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF00775C),
                      ),
                    ),
                    Text(
                      'Ketua Jurusan Agribisnis',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (isExpanded && title == 'Dosen')
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildGridItem('syarif.jpg', 'Prof. Dr. Ir. Syarif Imam Hidayat, M.M.'),
                    _buildGridItem('2,1.jpg', 'Dr. Ir. Nuriah Yuliati, M.P.'),
                    _buildGridItem('2,2.jpg', 'Dr. Ir. Mubarokah, M.T.'),
                    _buildGridItem('2,3.jpg', 'Dr. Ir. Hamidah Hendrarini, M.Si.'),
                    _buildGridItem('2,4.jpg', 'Dita Atasa,S.P., M.P.\n'),
                    _buildGridItem('2,5.jpg', 'Dr. Ida Syamsu Roidah, S.P.,M.MA.'),
                    _buildGridItem('2,6.jpg', 'Dr. Dona Wahyuning Laily, S.P., M.P.'),
                    _buildGridItem('2,7.jpg', 'Prof. Dr. Ir. Teguh Soedarto, M.P.'),
                    _buildGridItem('2,8.jpg', 'Prof.Dr.Ir.Sri Tjondro Winarno,M.M.'),
                    _buildGridItem('2,9.jpg', 'Dr. Ir. Indra Tjahaja Amir, M.P.'),
                    _buildGridItem('2,10.jpg', 'Dr. Ir. Pawana Nur Indah, M.Si.'),
                    _buildGridItem('2,11.jpg', 'Dr. Ir. Eko Nurhadi, M.S.'),
                    _buildGridItem('2,12.jpg', 'Dr. Ir. Endang Yektiningsih, M.P.'),
                    _buildGridItem('2,13.jpg', 'Dr. Gyska Indah Harya, S.P., M.Agr.'),
                    _buildGridItem('2,14.jpg', 'Ir. Sri Widayanti, M.P.'),
                    _buildGridItem('2,15.jpg', 'Dr. Noor Rizkiyah, S.P., M.P.'),
                    _buildGridItem('2,16.jpg', 'Dr. Fazlul Rahman, Lc., M.A.Hum.'),
                    _buildGridItem('2,17.jpeg', 'Dr. Wahyu Santoso, SP., M.MA.'),
                    _buildGridItem('2,18.jpg', 'Dr. Ir. Taufik Setyadi, M.P.'),
                    _buildGridItem('2,19.jpg', 'Nisa Hafi Idhoh Fitriana, S.P., M.P.'),
                    _buildGridItem('2,20.jpg', 'Prasmita Dian Wijayati, SP., M.Si.'),
                    _buildGridItem('2,21.jpg', 'Ika Sari Tondang, S.P., M.Sc.'),
                    _buildGridItem('2,22.jpg', 'Risqi Firdaus Setiawan, S.P., M.P.'),
                    _buildGridItem('2,23.jpg', 'Fatchur Rozci, S. Agr., M. Agr.'),
                    _buildGridItem('2,24.jpg', 'Mirza Andrian Syah, S.P., M.P.'),
                  ],
                ),
              ],
            ),
           if (isExpanded && title == 'Prestasi Mahasiswa')
  Padding(
    padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prestasi 1:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Devi Putri Fajariyah (Agribisnis, 2019)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara 3 International Students Virtual Mobility Program (ISVMP) 2022 dengan kategori Best Presentation dengan Topik "Achieving a Sustainable Life with Innovation on Industrial Production and Shaping The Consumption Habit" pada 28-29 Juni dan 2 Juli 2022 di Universitas Pembangunan Nasional "Veteran" Yogyakarta',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Prestasi 2:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Fitri Diani (Agribisnis, 2020)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara 3 Lomba Essai di ajang Aection 4.0  yang diselenggarakan oleh Himavo Akmapesa IPB University',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Prestasi 3:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Beatrice Maria Charmenita (Agribisnis, 2022)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara 3 Lomba Olimpiade Bahasa Inggris Tingkat Mahasiswa 2023 Diselenggarakan oleh CV. Divya Cahaya Prestasi Pada Tanggal 30 Juni-2 Juli 2023',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  ),

          if (isExpanded && content.isNotEmpty) // Menambahkan pengecualian untuk konten yang tidak kosong
            Padding(
              padding: EdgeInsets.only(left: 16.0), // Memberikan indentasi ke konten
              child: Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ),
        ],
         ),
              ),
            ),
          ],
        onExpansionChanged: (expanded) {
          setState(() {
            switch (title) {
              case 'Profil':
                isProfilExpanded = expanded;
                break;
              case 'Visi':
                isVisiExpanded = expanded;
                break;
              case 'Misi':
                isMisiExpanded = expanded;
                break;
              case 'Akreditasi':
                isAkreditasiExpanded = expanded;
                break;
              case 'Ketua Program Studi':
                isKetuaExpanded = expanded;
                break;
              case 'Dosen':
                isDosenExpanded = expanded;
                break;
              case 'Laman Website Resmi':
                isWebsiteExpanded = expanded;
                break;
              case 'Prestasi Mahasiswa':
                isPrestasiExpanded = expanded;
                break;
            }
          });
        },
      ),
    ),
    );
  }

  Widget _buildGridItem(String imagePath, String name) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildInfoRow(String title, String content) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
  _launchWebsite() async {
    const url = 'https://agribis.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}