import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class S2AgroteknologiDetailPage extends StatefulWidget {
  final String title;

  S2AgroteknologiDetailPage(this.title);

  @override
  _S2AgroteknologiDetailPageState createState() =>
      _S2AgroteknologiDetailPageState();
}

class _S2AgroteknologiDetailPageState extends State<S2AgroteknologiDetailPage> {
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
                    'agro.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8), // Memberikan ruang di antara gambar dan teks
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 47.0),
                      child: Text(
                        'Program Studi S2 Agroteknologi',
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
              'Program Magister Agroteknologi Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional "Veteran" Jawa Timur didirikan pada tahun 2017 dengan izin operasi nomor 224/KPT/1/2017. Pada tahun 2020, program ini berhasil meraih akreditasi Baik dari BAN-PT dengan nomor 7065/SK/BAN-PT/Akred/M/XI/2020. Fasilitas yong tersedia meliputi ruang kuliah, laboratorium, fasilitas IT, wifi area, teleconference, laboratorium bahasa, dan perpustakaan. Dosen tendiri dari Guru Besar, Doktor, dan Praktisi/Profesional sebagai dosen tamu dan tetap.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Visi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '"Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara"\n'
              'Program Studi Magister Agroteknologi Fakultas Pertanian UPN “Veteran” Jatim bertekad untuk berperan lebih luas dalam memajukan IPTEKS pertanian untuk menghasilkan solusi aplikatif bagi dunia usaha/industri dan pembangunan nasional melalui riset-riset unggul, serta mampu berkompetisi di tingkat global namun tidak lupa dengan akar budaya bangsa Indonesia',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Misi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.\n'
              '2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian.\n'
              '3. Menyelenggarakan pengabdian kepada masyarakat  melalui penerapan TTG berbasis kearifan lokal.\n'
              '4. Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui Litdimas',
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
                  'Prodi Agroteknologi (S2) terakreditasi Baik (BAN-PT)',
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
                        'https://magrotek.upnjatim.ac.id/',
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
                          image: AssetImage('bakti.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Dr. Ir. Bakti Wisnu Widjajani, M.P.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF00775C),
                      ),
                    ),
                    Text(
                      'Ketua Jurusan Agroteknologi',
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
                    _buildGridItem('1,20.jpg', 'Dr.Ir.Wanti Mindari, MP'),
                    _buildGridItem('1,1.jpeg', 'Dr.Ir.Ramdan Hidayat, MS'),
                    _buildGridItem('1,3.jpg', 'Dr.Ir.Sukendah, M.Sc'),
                    _buildGridItem('1,2.jpeg', 'Dr.Ir.Pangesti Nugrahani, MS.i'),
                    _buildGridItem('1,5.jpg', 'Dr.Ir.R.A Nora Augustien K., MP'),
                    _buildGridItem('1,36.jpg', 'Dr.Ir.Arika Purnawati, MP'),
                    _buildGridItem('bakti.png', 'Dr.Ir.Bakti Wisnu Widjajani, MP'),
                    _buildGridItem('1,32.png', 'Dr.Ir.Penta Suryaminarsih, MP'),
                    _buildGridItem('1,9.jpg', 'Dr.Ir.Makhziah, MP\n'),
                    _buildGridItem('1,34.jpg', 'Dr.Ir.Herry Nirwanto, MP'),
                    _buildGridItem('1,35.jpg', 'Dr.Ir.Yenny Wuryandari, MP'),
                    _buildGridItem('1,22.png', 'Dr.Ir.Rossyda Priyadarshini, MP'),
                    _buildGridItem('1,23.png', 'Dr.Ir.Moch. Arifin, MT'),
                    _buildGridItem('1,30.png', 'Dr.Ir.Tri Mujoko, MP\n'),
                    _buildGridItem('1,31.png', 'Dr.Ir.Sri Wiyatiningsih, MP'),
                    _buildGridItem('1,4.jpg', 'Prof.Dr.Ir.Juli Santoso, MP'),
                    _buildGridItem('1,6.jpg', 'Dr.Ir.Ida Retno Moeljani, MP'),
                    _buildGridItem('1,7.jpg', 'Dr.Dra.Sutini, M.Pd\n'),
                    _buildGridItem('1,21.png', 'Dr.Ir.Maroeto, MP\n'),
                    _buildGridItem('1,33.jpg', 'Dr.Ir.Wiwin Windriyanti, MP'),
                    _buildGridItem('1,8.png', 'Dr.Felicitas Deru Dewanti, SP, MP'),
                    _buildGridItem('1,37.jpg', 'Dr.Dra.Endang Tri Wahyu P., M.Si'),
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
    const url = 'https://magrotek.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}