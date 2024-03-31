import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DatadiriDetailPage extends StatefulWidget {
  final String title;

  DatadiriDetailPage(this.title);

  @override
  _DatadiriDetailPageState createState() =>
      _DatadiriDetailPageState();
}

class _DatadiriDetailPageState extends State<DatadiriDetailPage> {
  bool isNamaExpanded = false;
  bool isTTLExpanded = false;
  bool isAlamatExpanded = false;
  bool isNOHPExpanded = false;
  bool isEmailExpanded = false;
  bool isURLProfilGithubExpanded = false;
  bool isRiwayatPendidikanExpanded = false;
  bool isPenghargaanExpanded = false;

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
                  Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 16.0, top: 16.0, bottom: 20.0),
                        child: CircleAvatar(
                          radius: 50, // Radius lingkaran
                          backgroundImage: AssetImage('vivi.png'), // Gambar
                        ),
                      ),
                  SizedBox(width: 8), // Memberikan ruang di antara gambar dan teks
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 40.0),
                      child: Text(
                        'Identitas Diri',
                        style: TextStyle(
                          fontSize: 30,
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
  child: buildExpansionTile('Nama', '', isNamaExpanded, Color(0xFF00775C), Icons.person),
),

Padding(
  padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
  child: buildExpansionTile('TTL', '', isTTLExpanded, Color(0xFF00775C), Icons.calendar_today),
),

Padding(
  padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
  child: buildExpansionTile('Alamat', '', isAlamatExpanded, Color(0xFF00775C), Icons.location_on),
),

Padding(
  padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
  child: buildExpansionTile('No.HP', '', isNOHPExpanded, Color(0xFF00775C), Icons.phone),
),

Padding(
  padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
  child: buildExpansionTile('Email', '', isEmailExpanded, Color(0xFF00775C), Icons.email),
),

Padding(
  padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
  child: buildExpansionTile('Url Profil Github', '', isURLProfilGithubExpanded, Color(0xFF00775C), Icons.link),
),

Padding(
  padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
  child: buildExpansionTile('Riwayat Pendidikan', '', isRiwayatPendidikanExpanded, Color(0xFF00775C), Icons.school),
),

Padding(
  padding: const EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
  child: buildExpansionTile('Penghargaan', '', isPenghargaanExpanded, Color(0xFF00775C), Icons.emoji_events),
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
          if (isExpanded && title == 'Nama')
          Align(
            alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vivi Eka Juliatus Sholihah',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ),
          if (isExpanded && title == 'TTL')
          Align(
            alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gresik, 20 Juli 2004',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ),
          if (isExpanded && title == 'Alamat')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              'Gang XII Rt 03 Rw 07, Desa Gosari, Kecamatan Ujungpangkah, Kabupaten Gresik, Jawa Timur',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'No.HP')
          Align(
            alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '082143547299',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          ),
          if (isExpanded && title == 'Url Profil Github')
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'URL: ',
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
                        'https://github.com/Eka394',
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
          if (isExpanded && title == 'Email') 
  Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Text(
            'Email: ',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              _launchEmail(); // Panggil fungsi _launchEmail() saat tautan email diklik
            },
            child: Text(
              'vivieka394@gmail.com', // Ganti dengan alamat email yang diinginkan
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
           if (isExpanded && title == 'Riwayat Pendidikan')
  Padding(
    padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jenjang SD',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'MI Al-Hidayah Gosari (2009-2016)',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Jenjang SMP',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Mts Al-Hidayah Gosari (2016-2019)',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Jenjang SMA',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'SMA Negeri 1 Sidayu (2019-2022)',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Jenjang Universitas',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'UPN "Veteran" Jawa Timur (2022-Sekarang)',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  ),
if (isExpanded && title == 'Penghargaan')
  Padding(
    padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Penghargaan 1:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Juara 1 Poster Digital',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Seleksi FLS2N tingkat Kabupaten tahun 2020',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.left,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Penghargaan 2:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Semi Finalis',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Lomba Akselerasi Business Challenge yang diadakan oleh Hasnur Centre Business School dan Inkubator Bisnis Wetland Box',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
        Divider(), // Garis di antara setiap prestasi
        Text(
          'Penghargaan 3:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8), // Spasi antara judul dan deskripsi
        Text(
          'Juara 3 UI/UX Design',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Pada kegiatan Lomba Informatics Competition dengan tema "Opportunities For Young Techpreneurs to Enhance IT Skill And Foster Creativity" yang diselenggarakan oleh Himpunan Mahasiswa Informatika Fakultas Teknologi Industri Universitas Ahmad Dahlan',
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
              case 'Nama':
                isNamaExpanded = expanded;
                break;
              case 'TTL':
                isTTLExpanded = expanded;
                break;
              case 'Alamat':
                isAlamatExpanded = expanded;
                break;
              case 'No.HP':
                isNOHPExpanded = expanded;
                break;
              case 'Email':
                isEmailExpanded = expanded;
                break;
              case 'Url Profil Github':
                isURLProfilGithubExpanded = expanded;
                break;
              case 'Riwayat Pendidikan':
                isRiwayatPendidikanExpanded = expanded;
                break;
              case 'Penghargaan':
                isPenghargaanExpanded = expanded;
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
    const url = 'https://github.com/Eka394';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchEmail() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'vivieka394@gmail.com', // Ganti dengan alamat email yang diinginkan
    queryParameters: {
      'subject': 'Subject', // Ganti dengan subjek email yang diinginkan
      'body': 'Isi email...', // Ganti dengan isi email yang diinginkan
    },
  );
  String url = _emailLaunchUri.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

}