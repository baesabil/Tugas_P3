import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pemandangan Taman dan Langit Sore',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Cianjur, Jawa Barat',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.call_outlined, ''),
        _buildButtonColumn(Colors.black, Icons.near_me_outlined, ''),
        _buildButtonColumn(Colors.black, Icons.share_outlined, ''),
      ],
    );

    Widget textSection = Container(
        padding: EdgeInsets.all(32),
        child: Text(
          'Menjaga kesehatan adalah hal yang harus dilakukan setiap orang, baik itu anak-anak atau orangtua sekalipun. Bahkan kesehatan merupakan salah satu hal yang diprioritaskan di dalam kehidupan. Namun, meski menjaga kesehatan adalah hal yang diprioritaskan tetap saja tanpa sadar kita sering melanggarnya.'
          'salah satu bagian tubuh yang  sering terkena penyakit untuk kalangan orang dewasa adalah organ mata. Biasanya jika diusia lanjut penyakit mata minus ataupun plus lah yang sering dialami. Ini terjadi karena saat kita memasuki usia dewasa banyak sekali kerjaan yang mengharuskan kita memfungsikannya secara berlebihan. maka dari itu melihat pemandangan adalah menjadi obat yang baik untuk menghilangkan stress dan lelah mata',
          maxLines: 11,
          textAlign: TextAlign.justify,
        ));

    return MaterialApp(
      title: 'Manfaat melihat pemandangan',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'assets/bunga.jpg',
              width: 600,
              height: 200,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
