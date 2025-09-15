// lib/data/news_data.dart

class NewsItem {
  final String title;
  final String image;
  final String content;
  final String date;
  final String author;

  NewsItem({
    required this.title,
    required this.image,
    required this.content,
    required this.date,
    required this.author,
  });
}

// Dummy data
final List<NewsItem> newsData = [
  NewsItem(
    title:
    "Pelatihan Pembuatan Toko Online dan SEO Bagi Guru SMK Bakti Nusantara 666 Dalam Program SMK PK",
    image: "assets/images/news1.jpg",
    content:
    "Beberapa waktu lalu Cyberlabs dipercaya oleh SMK Bakti Nusantara 666 Kab Bandung untuk melakukan pelatihan Digital Marketing dalam rangkaian SMK PK.\n\n"
        "Dimana CyberLabs yang memang berfokus pada bidang digital marketing, jasa pembuatan website dan aplikasi mobile memberikan pelatihan digital marketing dengan materi pembuatan website dan strategi search engine optimization.\n\n"
        "Jumlah guru yang ikut berpartisipasi dalam proses pelatihan ini adalah 28 guru SMK dengan harapan agar skill atau ilmu dari para guru ini dapat di tingkatkan untuk nantinya diajarkan kembali kepada siswa/i sekolah tersebut.",
    date: "Senin, 24 Oktober 2022 pukul 00.28",
    author: "Admin",
  ),
  NewsItem(
    title:
    "Coaching Clinic ke 5 UKM Incubator Unpad Oorange Bersama Kemenkop dan CyberLabs",
    image: "assets/images/news2.jpg",
    content:
    "Coaching clinic merupakan serangkaian coaching yang diadakan oleh Kemenkop bersama Oorange dengan menggandeng CyberLabs.\n\n"
        "Program ini diharapkan dapat membantu para pelaku usaha kecil dan menengah dalam mengembangkan bisnis mereka secara digital.",
    date: "Selasa, 25 Oktober 2022 pukul 09.15",
    author: "Admin",
  ),
  NewsItem(
    title:
    "CyberLabs Menerima Siswa PKL Jurusan Bisnis Daring dari SMKN 5 Pangandaran",
    image: "assets/images/news3.jpg",
    content:
    "Beberapa waktu lalu CyberLabs menerima 15 siswa SMKN 5 Pangandaran jurusan bisnis daring dan pemasaran untuk melakukan Praktik Kerja Lapangan (PKL).\n\n"
        "Selama program berlangsung, siswa dibekali dengan berbagai keterampilan digital marketing yang relevan dengan dunia industri.",
    date: "Rabu, 26 Oktober 2022 pukul 13.40",
    author: "Admin",
  ),
  NewsItem(
    title:
    "Guru Tamu Dalam Program SMK PK Antara CyberLabs Dengan SMK Bina Putra Purwakarta",
    image: "assets/images/news4.jpg",
    content:
    "Dalam program SMK Pusat Keunggulan (PK), CyberLabs dipercaya oleh SMK Bina Putra Bina Putra Purwakarta untuk menjadi guru tamu.\n\n"
        "Kegiatan ini bertujuan untuk memberikan wawasan praktis mengenai dunia digital marketing kepada para siswa.",
    date: "Kamis, 27 Oktober 2022 pukul 10.00",
    author: "Admin",
  ),
];
