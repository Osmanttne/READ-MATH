import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:read_math/navbar.dart';
import 'package:read_math/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Araştırma Raporu", style: Styles.appbarStyle)
    ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  "Özet",
                  style: Styles.header,
                )
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  "Araştırmamızda verimli ve kaliteli kitap okumanın matematiksel becerilere ve akademik başarıya olan etkisi incelenmiştir. Ortaokul ve lise grubu öğrencilerine hazırladığımız, tüm gruplara uygun matematiksel mantık sınavı belli bir zaman aralığı ile iki kere uygulanmıştır. Sınav soruları seçilirken soruların bilgiden ziyade okuduğunu anlama ve muhakeme becerisini ölçmesine dikkat edilmiştir, bu nedenle sınav tüm sınıf gruplarına uygulanabilir niteliktedir. Sınavların arasındaki zaman aralığında öğrencilerin kitap okuma durumları yakından takip edilmiştir. Öğrencilerin bireysel ya da ödev olarak okuduğu kitaplar kontrol edilmiştir. İlk sınavda öğrencilere kitap okuma durumları sorulmuştur. Bütün öğrencilerin bitirme süreleri kontrol edilip verileri toplanmıştır. Öğrencilerin sınavları tek tek okunarak iki sınav arasındaki gelişimi incelenebilecek bir e-tablo oluşturulmuştur. E-tablo; doğru, yanlış, boş sayılarını, doğru/dakika analizini ve öğrencilerin kitap okuma durumlarını kapsamaktadır. Bu e-tablodaki tüm verilerin ortalaması alınmış ve bu verilerle beraber yüzdelik daire grafikleri oluşturulmuştur. Araştırmamızın sonucunda verimli ve kaliteli kitap okumanın matematiğe dair olumlu bir etkisinin olduğu ve bu etkenini bütün sınıf seviyelerinde olduğu tespit edilmiştir.",
                  style: Styles.textDefault,
                )
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  "Elde Ettiğimiz Veriler",
                  style: Styles.header,
                )
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Image(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/data/image2.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Image(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/data/image8.png"),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  "Sonuç",
                  style: Styles.header,
                )
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  "Öğrencilerin kitap okuma alışkanlıkları ile test sonuçlarındaki değişim arasında pozitif ya da negatif yönlü korelasyon görülmemiştir. Bu durumun sebebinin “sık sık” ve “bazen” kavramlarının göreceli kavramlar olması düşünülmektedir. Araştırmaya katılan bir öğrenci kendisinin bazen kitap okuduğunu düşünse de kavramların göreceliliğinden dolayı sık sık kitap okuduğunu düşünen bir öğrenciden daha sık kitap okumakta olabildiği düşünmektedir.",
                  style: Styles.textDefault,
                )
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: const Divider(
                  color:  Colors.grey,
                  height: 20,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                )
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  "Projenin TÜBİTAK 2204 - A Lise Öğrencileri Araştırma Projeleri Yarışması'na sunulmuş olan metnine aşağıdaki butondan ulaşılabilir.",
                  style: Styles.textDefault,
                )
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: ElevatedButton.icon(
                    icon: const Icon(Icons.article),
                    onPressed: () {
                      launch("https://docs.google.com/document/d/1b4dbQ8typFCjIEH6idPgCxScD_j3kZ_saXFL8j_5xug"); //launch is from url_launcher package to launch URL
                    },
                    label: const Text("Proje metnini görüntüle")
                )
            ),
          ]
        )
      )
    );
  }
}