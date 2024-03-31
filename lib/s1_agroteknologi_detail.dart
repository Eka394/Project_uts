import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class S1AgroteknologiDetailPage extends StatefulWidget {
  final String title;

  S1AgroteknologiDetailPage(this.title);

  @override
  _S1AgroteknologiDetailPageState createState() =>
      _S1AgroteknologiDetailPageState();
}

class _S1AgroteknologiDetailPageState extends State<S1AgroteknologiDetailPage> {
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
                        'Program Studi S1 Agroteknologi',
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
              'Jurusan Agroteknologi, Fakultas Pertanian, Universitas Pembangunan Nasional (UPN) “Veteran” Jawa Timur didirikan pada tanggal 17 Mei 1968 yang diresmikan oleh Menteri Urusan Veteran dan Demobalisasi RI, dengan SK pendirian Program Studi No : 062/Kpts/Mentransvet/68, SK Izin Operasional No : 321/D/T/2008 didukung SK penggabungan Program Studi No : 2449/D/T/2009.\nProgram Studi Agroteknologi mencapai peringkat akreditasi A (362) dengan SK BAN – PT No : 972/SK/BAN-PT/Akred/S/IX/2015. Program Studi Agroteknologi terdiri dari 3 bidang minat yaitu, Bidang Ilmu Tanah, Bidang Ilmu Hama Penyakit Tanaman dan Bidang Agronomi. jurusan ini menawarkan pengalaman belajar yang berkualitas dan relevan dengan kebutuhan industri pertanian modern.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Visi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '“Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.”',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          if (isExpanded && title == 'Misi')
          Padding(
            padding: EdgeInsets.only(left: 16.0), // Ubah padding agar teks berada di sebelah kiri
            child: Text(
              '1. Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja.\n'
              '2. Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat.\n'
              '3. Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal.\n'
              '4. Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional.\n'
              '5. Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi.\n'
              '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.\n'
              '7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang Agroteknologi baik dalam dan luar negeri.',
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
                  'Prodi Agroteknologi (S1) terakreditasi A (BAN-PT)',
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
                        'https://agrotek.upnjatim.ac.id/en/',
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
                buildInfoRow('A. Bidang Ilmu Agronomi', ''),
                SizedBox(height: 4),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildGridItem('1,1.jpeg', 'Dr.Ir.Ramdan Hidayat, MS'),
                    _buildGridItem('1,2.jpeg', 'Dr.Ir.Pangesti Nugrahani, MS.i'),
                    _buildGridItem('1,3.jpg', 'Dr.Ir.Sukendah, M.Sc'),
                    _buildGridItem('1,4.jpg', 'Prof.Dr.Ir.Juli Santoso, MP'),
                    _buildGridItem('1,5.jpg', 'Dr.Ir.R.A Nora Augustien K., MP'),
                    _buildGridItem('1,6.jpg', 'Dr.Ir.Ida Retno Moeljani, MP'),
                    _buildGridItem('1,7.jpg', 'Dr.Dra.Sutini, M.Pd\n'),
                    _buildGridItem('1,8.png', 'Dr.Felicitas Deru Dewanti, SP, MP'),
                    _buildGridItem('1,9.jpg', 'Dr.Ir.Makhziah, MP\n'),
                    _buildGridItem('1,10.jpeg', 'Ir.Hadi Suhardjono, MTp'),
                    _buildGridItem('1,11.png', 'Ir.Agus Sulistyono, MP'),
                    _buildGridItem('1,12.jpeg', 'Ir.Rr.Djarwatiningsih P.S., MP'),
                    _buildGridItem('1,13.jpg', 'Ir.Widiwurjani, MP\n'),
                    _buildGridItem('1,14.jpeg', 'Ir.Didik Utomo Pribadi, MP'),
                    _buildGridItem('1,15.jpg', 'Ir.Yonny Koentjoro, MM'),
                    _buildGridItem('1,16.png', 'Puji Lestari Tarigan, SP, M.Sc'),
                    _buildGridItem('1,17.jpg', 'Nova Triani, SP, MP\n'),
                    _buildGridItem('1,18.png', 'Saefurrohman, SP, M.Sc.'),
                    _buildGridItem('1,19.jpg', 'Fadila Suryandika, STP, MSc'),
                  ],
                ),
                SizedBox(height: 4),
                buildInfoRow('B. Bidang Ilmu Tanah', ''),
                SizedBox(height: 4),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildGridItem('1,20.jpg', 'Dr.Ir.Wanti Mindari, MP'),
                    _buildGridItem('bakti.png', 'Dr.Ir.Bakti Wisnu Widjajani, MP'),
                    _buildGridItem('1,21.png', 'Dr.Ir.Maroeto, MP\n'),
                    _buildGridItem('1,22.png', 'Dr.Ir.Rossyda Priyadarshini, MP'),
                    _buildGridItem('1,23.png', 'Dr.Ir.Moch. Arifin, MT'),
                    _buildGridItem('1,24.jpg', 'Ir.Kemal Wijaya, MT\n'),
                    _buildGridItem('1,25.jpeg', 'Ir.Purwadi, MP\n'),
                    _buildGridItem('1,26.jpg', 'Ir.Siswanto, MT\n'),
                    _buildGridItem('1,27.jpg', 'Ir.R.Purnomo Edi Sasongko, MP'),
                    _buildGridItem('1,28.jpg', 'Haidar Fari Aditya, SP. MP.'),
                    _buildGridItem('1,29.png', 'Fitri Wijayanti. SP. MP.'),
                  ],
                ),
                SizedBox(height: 4),
                buildInfoRow('C. Hama Penyakit Tanaman', ''),
                SizedBox(height: 4),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildGridItem('1,30.png', 'Dr.Ir.Tri Mujoko, MP\n'),
                    _buildGridItem('1,31.png', 'Dr.Ir.Sri Wiyatiningsih, MP'),
                    _buildGridItem('1,32.png', 'Dr.Ir.Penta Suryaminarsih, MP'),
                    _buildGridItem('1,33.jpg', 'Dr.Ir.Wiwin Windriyanti, MP'),
                    _buildGridItem('1,34.jpg', 'Dr.Ir.Herry Nirwanto, MP'),
                    _buildGridItem('1,35.jpg', 'Dr.Ir.Yenny Wuryandari, MP'),
                    _buildGridItem('1,36.jpg', 'Dr.Ir.Arika Purnawati, MP'),
                    _buildGridItem('1,37.jpg', 'Dr.Dra.Endang Tri Wahyu P., M.Si'),
                    _buildGridItem('1,38.jpeg', 'Drh.Wiludjeng Widajati, MP'),
                    _buildGridItem('1,39.jpg', 'Ramadhani M. K.,SP.MP.M.Sc'),
                    _buildGridItem('1,40.jpg', 'Safira Rizka Lestari, SP, MP'),
                    _buildGridItem('1,41.jpg', 'Noni Rahmadhini, SP, M.Sc'),
                    _buildGridItem('1,42.jpeg', 'Dita Megasari, SP, M.Si'),
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
          'Maryam Eyka Dijono Saputro (Agroteknologi, 2022)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Medali Emas Cabor Outdoor Hockey Putri dalam PORPROV JATIM VIII 2023-yang diselenggarakan oleh KONI JATIM - Pada Tanggal 7-12 September 2023 di Gor Gajah Mada. Mojosari, Mojokerto',
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
          'Talitha Maritza Putri Tara (Agroteknologi, 2021)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara 2 Komite Senior Upper 12 Putri Kelas A tingkat Nasional Lomba Kejuaraan Jujitsu Unesa Open (KJUO) XVII 2023, yang diselenggarakan oleh UKM Jujitsu UNESA pada 13-15 Oktober 2023ndi GSG UNESA Ketintang, Surabaya',
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
          'Mochammad Mirza (Agroteknologi, 2019) dan Anivea Fachmi Nur Fitri (Agroteknologi, 2020)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Juara 3 Lomba Essay Ilmiah dalam Event Plant Protection Competition yang diselenggarakan Himpunan Mahasiswa Proteksi Tanaman (HIMAPTA) Universitas Brawijaya, 2022',
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
    const url = 'https://agrotek.upnjatim.ac.id/en/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}