import 'package:flutter/material.dart';
import 'package:read_math/navbar.dart';
import 'package:read_math/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
                  constraints: const BoxConstraints.tightFor(height: 200),
                  child: CachedNetworkImage(
                    imageUrl: "https://twinspace.etwinning.net/files/collabspace/4/44/644/197644/images/ba77953d8.jpg",
                    placeholder: (context, url) => const Center(child: SizedBox(
                        width: 40,
                        height: 40,
                        child: CircularProgressIndicator()
                    )),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    fit: BoxFit.fitWidth,
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
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
                    "Math-Maker kulübü üyeleri\nBeril Zeynep Ayyıldız\nMina Mollaoğlu\nMustafa Efe Güzel\nOsman Talha Taka\nUlaş Kuşçu\nZeynep Pelin Ceyhan\n",
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
                    "Proje Ortaklarımız",
                    style: Styles.header,
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: const Text(
                    "İbrahim Soykan, TED Sakarya Koleji\nGözde Dirmenci, TED Sakarya Koleji\nIraz KIYICI, TED Sakarya Koleji\nDerya KOCAÇİNAR, Mehmet Akif İnan Ortaokulu\nGulshan Hajiyeva, Baku, 99 nomreli ta orta mekteb\nMehtap Üzer, Özel Mürüvvet Evyap Okulları\nReyhan VAHAPOĞLU, Silopi Atatürk Anadolu Lisesi\nSülhiye Yazıcı, Köprülü Mehmet Paşa Anadolu Lisesi\nYasin MERCAN, Kütahya Fatih Ortaokulu\nÖzlem GÖKKAYA, Buca Mehmet Akif Ersoy Sosyal Bilimler Lisesi",
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
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: const Text(
                    "Bu proje bir eTwinning projesidir.",
                    style: Styles.textDefault,
                  )
              ),
              const Image(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/images/etwinning-logo.png")
              )
            ]
        ),
      )
    );
  }
}

