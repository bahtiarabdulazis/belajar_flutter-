import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Ganti warna sesuai preferensi
          title: Text('Profile Page'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/w.jpg"), // Ganti dengan path gambar jembatan yang kamu gunakan
              fit: BoxFit.cover, // Membuat gambar memenuhi seluruh layar
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/gueh2.jpg'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Bahtiar Abdul Azis',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Ubah warna teks agar terlihat jelas di atas background
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Siswa SMK Wikrama Bogor',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70, // Ubah warna teks
                      ),
                    ),
                    SizedBox(height: 30),
                    
                    // Tentang Saya
                    _buildSectionTitle('About'),
                    _buildInfoCard(
                      context,
                      'Saya adalah siswa SMK Wikrama Bogor yang tertarik dalam bidang IT dan berfokus pada pengembangan web.',
                    ),
                    SizedBox(height: 20),

                    // Riwayat
                    _buildSectionTitle('History'),
                    _buildInfoCard(
                      context,
                      'Sudah pernah merasakan bagaimana dunia kerja atau biasa disebut PKL selama kurun waktu 6 bulan',
                    ),
                    SizedBox(height: 20),

                    // Skill
                    _buildSectionTitle('Skills'),
                    _buildSkillList(['HTML', 'React', 'Laravel', 'CSS', 'Flutter']),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white, // Ubah warna teks agar lebih terlihat
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String content) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7), // Background card transparan
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        content,
        style: TextStyle(fontSize: 16, color: Colors.white), // Warna teks putih
      ),
    );
  }

  Widget _buildSkillList(List<String> skills) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7), // Background card transparan
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: skills
            .map((skill) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.check, color: Colors.green, size: 20),
                      SizedBox(width: 10),
                      Text(
                        skill,
                        style: TextStyle(fontSize: 16, color: Colors.white), // Warna teks putih
                      ),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
