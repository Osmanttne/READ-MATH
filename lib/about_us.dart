import 'package:flutter/material.dart';
import 'package:read_math/navbar.dart';
import 'package:read_math/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hakkımızda", style: Styles.appbarStyle)
      ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  constraints: BoxConstraints.tightFor(height: 200),
                  child: Image.network("https://twinspace.etwinning.net/files/collabspace/4/44/644/197644/images/ba77953d8.jpg", fit: BoxFit.fitWidth)
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: const Text(
                    "Bizler matemetiği okulda gördüğümüz bir dersin üstüne çıkarmaya çalışan lise öğrencileriyiz. Amacımız matematiksel düşünceyi geliştirmek, matematik ile ilgili çalışmalar yapmak ve matematiğin eğlenceli dünyasının kapılarını insanlara gösterebilmektir. Oku-Mat projemiz, verimli kitap okumanın matematik başarısını araştırma gayesi taşımaktadır.",
                    style: Styles.textDefault,
                  )
              ),
            
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: const Text(
                    "Takımımız",
                    style: Styles.header,
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: const Text(
                    "Math-Maker kulübü Üyeleri \nMustafa Efe Güzel\nOsman Talha Taka\nUlaş Kuşçu\nMina Mollaoğlu\nZeynep Pelin Ceyhan\nBeril Zeynep Ayyıldız",
                    style: Styles.textDefault,
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: ElevatedButton.icon(
                      icon: const Icon(Icons.email),
                      onPressed: () {
                        launch("mailto:readmathdevelopers@protonmail.com"); //launch is from url_launcher package to launch URL
                      },
                      label: const Text("Bize E-Posta Gönderin")
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: const Text(
                    "Bu uygulama Flutter çerçevesi ile yazılmış özgür/açık kaynak yazılımdır.",
                    style: Styles.textDefault,
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: ElevatedButton.icon(
                      icon: const Icon(Icons.code),
                      onPressed: () {
                        launch("https://github.com/Osman-Taka/READ-MATH"); //launch is from url_launcher package to launch URL
                      },
                      label: const Text("Kaynak kodunu görüntüle")
                  )
              ),
            ]
        ),
      )
    );
  }
}

