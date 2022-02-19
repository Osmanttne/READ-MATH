import 'package:flutter/material.dart';
import 'package:ted_gcc_mobile_app/navbar.dart';
import 'package:ted_gcc_mobile_app/styles.dart';
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
                    "We are the TED Sakarya High School Global Citizenship Club members. Over the past couple of years, we have been researching the global conflicts that citizens and our planet are face to face with. Our aim is to improve the awareness for citizenship conflicts, gender diversity and issues in our neighborhood.\n\nAs the Citizenship Theories group, this year we have developed a website and mobile application for global awareness. You can access the website from the link below:",
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
                    "Math-Maker kulübü Üyeleri \nMustafa Efe Güzel\nOsman Talha Taka\nUlaş Kuşçu\nMina Mollaoğlu\nZeynep Pelin Ceyhan\nBeril Ayyıldız.",
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
                    "This app is free/open source software that is developed using the Flutter framework.",
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
                      label: const Text("Kaynak Yazılımını görünlüle")
                  )
              ),
            ]
        ),
      )
    );
  }
}

