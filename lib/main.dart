import 'package:flutter/material.dart';

// fonksiyon tanımlamak
void main() {
  print(" başarılı");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _name = 'Erdi';

    bool isDebug = false;

    return MaterialApp(
      debugShowCheckedModeBanner: isDebug,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/notification.png',
                width: 27,
                height: 27,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'assets/bag.png',
                width: 27,
                height: 27,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Anything...",
                  //hintText yerine labelText te kullanılabilir.
                  prefixIcon: Icon(Icons.search),
                  //Arama ikonu figmadaki ile değiştirilecek.
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              //sadece sağa ve sola boşluk eklemek istiyorsak EdgeInsets.symmetric(horizontal) kullanabiliriz.
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View All ->',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 10; i++)
                    Column(
                      children: [
                        if (i % 2 == 0)
                          Image.asset('assets/fashion.png')
                        else
                          Image.asset(
                            'assets/Electronics.png',
                            width: 27,
                            height: 27,
                          ),
                        Text(i % 2 == 0 ? "Fashion" : "Electronics"),
                      ],
                    ),
                ],
              ),
            ),
            Text('Selam $_name'),
          ],
        ),
        drawer: const Drawer(),
      ),
    );
  }
}

//materialapp - uygulama mimarisi sunar

//scaffold - sayfa mimarisi sunar

// Veri tipleri
// Değişken tanımlamak
String selamlamaMetni = "Merhaba";

int sayi = 5;

String isim = "Erdi";
String soyisim = "Üstüner";

int yas = 21;

List<int> okullaGecenYillar = [
  2013,
  2014,
  2015,
  2016,
  2017,
  2018,
];
// list e int eklersek listeye başka tür veri atayamayız.
bool askerlikDurumu = false;

Insan erdi = Insan("Erdi", "Üstüner", yas, okullaGecenYillar, askerlikDurumu);

class Insan {
  String isim;
  String soyisim;
  int yas;
  List<int> okullaGecenYillar;
  bool askerlikDurumu;

  Insan(this.isim, this.soyisim, this.yas, this.okullaGecenYillar,
      this.askerlikDurumu) {
    print("İnsan sınıfı oluşturuldu.");
  }
}
