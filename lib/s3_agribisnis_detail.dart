import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class S3AgribisnisDetailPage extends StatefulWidget {
  final String title;

  S3AgribisnisDetailPage(this.title);

  @override
  _S3AgribisnisDetailPageState createState() =>
      _S3AgribisnisDetailPageState();
}

class _S3AgribisnisDetailPageState extends State<S3AgribisnisDetailPage> {
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
                        'Program Studi S3 Agribisnis',
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
              'Program studi doktor Agribisnis UPN “Veteran” Jawa Timur merupakan program studi doktor agribisnis pertama dan satu-satunya di Surabaya.\nKeberadaan Program Doktor di Fakultas Pertanian UPN “Veteran” Jawa Timur memiliki perjalanan yang panjang. Program Doktor Agribisnis merupakan satu – satunya program doktor yang dimiliki oleh UPN “Veteran” Jawa timur. Program doktor agribisnis dimulai dari pengusulan tahun 2019 hingga akhirnya resmi berdiri di tahun 2020. Program doktor agribisnis bertujuan untuk menemukan/ mengembangkan teori gagasan ilmiah baru serta memberikan kontribusi pada pengembangan serta pengamalan ilmu pengetahuan di bidang agribisnis. Selain itu potensi Indonesia sebagai salah satu negara di dunia yang memiliki kekayaan alam sangat besar baik kuantitas maupun keragaman. Dari segi keragaman hayati, Indonesia dikenal sebagai salah satu dari dua negara dengan julukan “Megadiversitas”. Namun demikian, kekayaan alam ini belum sepenuhnya bisa dikelola secara optimal, karena terbatasnya sumber daya manusia yang mampu menguasai dan mengembangkan IPTEK pertanian sesuai potensi tersebut. Program Doktor Agribisnis Fakultas Pertanian UPN “Veteran” Jawa Timur diselenggarakan untuk menjawab permasalahan di atas dan diharapkan mampu menghasilkan tenaga akademik yang menguasai dan mampu mengembangkan IPTEK melalui kegiatan penelitian yang sistematis, terprogram serta mampu menerapkan IPTEK untuk kesejahteraan masyarakat dan bangsa. Proses perkuliahan dan penelitian diarahkan untuk menjadikan lulusan Program Doktor Agribisnis Fakultas Pertanian UPN “Veteran” Jawa Timur selalu siap berkembang, dapat menyesuaikan diri dengan perkembangan masyarakat, dan senantiasa mengikuti kemajuan ilmu pengetahuan dan teknologi.\nSejak di resmikan, Program Doktor Agribisnis, Fakultas Pertanian UPN “Veteran” Jawa Timur sudah mulai menerima mahasiswa baru melalui jalur Ujian Mandiri terpadu yang dikelola langsung oleh Lembaga Pengembangan Pembelajaran dan Penjaminan Mutu (LP3M) UPN “Veteran” Jawa Timur. Pengelolaan Program Doktor Agribisnis masih terpusat dibawah naungan Jurusan Agribisnis Fakultas Pertanian UPN “Veteran” Jawa Timur.\nJurusan Agribisnis menjadi Jurusan Pertama yang menjadi embrio untuk pendirian Program doktor di UPN “Veteran” Jawa Timur. Secara resmi, Berdirinya program doktor berdasarkan Surat keputusan rektor menjadi pelengkap dalam jenjang pendidikan di bidang Agribisnis UPN “Veteran” Jawa Timur, dimulai dari Strata 1 Agribisnis (S1), Strata 2 Agribisnis (S2), dan Strata 3 Agribisnis (S3).',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Visi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '“Pengembangan Integrasi Smart FarmingBerkelanjutan yang Berwawasan Global untuk Kesejahteraan Masyarakat.”',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Misi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agribisnis yang berbasis sumberdaya dan kearifan lokal sehingga mampu menciptakan/ inovasi kasanah keilmuan dalam bidang Pertanian khususnya agribisnis.\n'
              '2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berbasis sumberdaya dan kearifan lokal yang berdaya guna untuk penguatan  kesejahteraan masyarakat di tingkat nasional maupun internasional.\n'
              '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset berskala nasional di bidang agribisnis dan memanfaatkan  kearifan lokal.\n'
              '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.\n'
              '5. Mengembangkan kualitas sumberdaya manusia unggul dalam pengetahuan,  sikap dan tata nilai, pendalaman /penguasaan pengetahuan dan menajerial di bidang agribisnis.\n'
              '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu dalam upaya untuk penyelenggaraan Pendidikan S3 / Doktor Agribisnis.\n'
              '7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis di tingkat nasional maupun internasional.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
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
                  'Prodi Agribisnis (S3) terakreditasi Baik (BAN-PT)',
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
                        'https://dokgri.upnjatim.ac.id/',
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
                    _buildGridItem('fauzi.png', 'Prof. Dr. Ir. Akhmad Fauzi, M.M.T., IPU'),
                    _buildGridItem('syarif.jpg', 'Prof. Dr. Ir. Syarif Imam Hidayat, M.M.'),
                    _buildGridItem('2,7.jpg', 'Prof. Dr. Ir. Teguh Soedarto, M.P.'),
                    _buildGridItem('3.png', 'Prof. Dr. Syamsul Huda, S.E., M.T.'),
                    _buildGridItem('2,3.jpg', 'Dr. Ir. Hamidah Hendrarini, M.Si.'),
                    _buildGridItem('2,1.jpg', 'Dr. Ir. Nuriah Yuliati, M.P.'),
                    _buildGridItem('2,12.jpg', 'Dr. Ir. Endang Yektiningsih, M.P.'),
                    _buildGridItem('2,9.jpg', 'Dr. Ir. Indra Tjahaja Amir, M.P.'),
                    _buildGridItem('2,2.jpg', 'Dr. Ir. Mubarokah, M.T.P'),
                    _buildGridItem('2,10.jpg', 'Dr. Ir. Pawana Nur Indah, M.Si.'),
                    _buildGridItem('2,8.jpg', 'Prof.Dr.Ir.Sri Tjondro Winarno,M.M.'),
                    _buildGridItem('2,11.jpg', 'Dr. Ir. Eko Nurhadi, M.S.'),
                  ],
                ),
              ],
            ),
           if (isExpanded && title == 'Prestasi Mahasiswa')
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
    const url = 'https://dokgri.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}