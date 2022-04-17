import 'package:flutter/material.dart';
import 'package:read_math/articles_for_Read_Math.dart';
import 'package:read_math/article_list.dart';
import 'styles.dart';
import 'navbar.dart';
import 'research_report.dart';
import 'about_us.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan
        ),
      home: const HomeScreen() // used to be ArticleList(Articles.FetchAll())
    );
  }

}

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Read-Math Mobil Uygulaması",
              style: Styles.appbarStyle
          )
      ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text("Uygulamamıza hoş geldiniz!", style: Styles.header,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Image.asset("assets/images/homescreen_logo.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ArticleList(Articles.FetchAll()))
                        );
                      },
                      icon: const Icon(Icons.description),
                      label: const Text("Makaleler")
                  ),
                )
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Report())
                          );
                        },
                        icon: const Icon(Icons.analytics),
                        label: const Text("Araştırma Raporu")
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const AboutUs())
                          );
                        },
                        icon: const Icon(Icons.people),
                        label: const Text("Hakkımızda")
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}