import 'package:flutter/material.dart';

// fonksiyon tanımlamak
void main() {
  print(" başarılı");

  runApp(myApp);
}

String _name = 'Erdi';

bool isDebug = false;

Widget myApp = MaterialApp(
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
    body: Center(
      child: Text('Selam $_name'),
    ),
    drawer: const Drawer(),
  ),
);

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
