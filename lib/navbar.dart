import 'package:flutter/material.dart';
import 'package:read_math/styles.dart';
import 'package:read_math/main.dart';
import 'package:read_math/about_us.dart';
import 'research_report.dart';
import 'article_list.dart';
import 'articles_for_Read_Math.dart';
//int currentPageIndex = 0;

/*class Stack<E> { // copy-pasted from Stack Overflow
  final _list = <E>[];

  void push(E value) => _list.add(value);
  E pop() => _list.removeLast();
  E get peek => _list.last;
  bool get isEmpty => _list.isEmpty;
  bool get isNotEmpty => _list.isNotEmpty;

  @override
  String toString() => _list.toString();
}
final pages = Stack<int>();
*/
class NavBar extends StatelessWidget{
  const NavBar({Key? key}) : super(key: key);

  void pageLoader(BuildContext context, int pageIndex){
    switch(pageIndex){
      case 0:
        Navigator.pop(context);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ArticleList(Articles.FetchAll()))
        );
        break;

      case 1:
        Navigator.pop(context);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AboutUs())
        );
        break;

      case 2:
        Navigator.pop(context);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Report())
        );
        break;
  }
}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
              height: 226,
              child: UserAccountsDrawerHeader(accountName: Text(""), accountEmail: Text(""),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/navbar.png"),
                      )
                  )
              )
          ),
          ListTile(
              leading: const Icon(Icons.description),
              title: const Text("Makaleler", style: Styles.textDefault),
              onTap: () => pageLoader(context, 0)
          ),
          ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text("Araştırma Raporu", style: Styles.textDefault),
              onTap: () => pageLoader(context, 2)
          ),
          ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Hakkımızda", style: Styles.textDefault),
              onTap: () => pageLoader(context, 1)
          ),
        ],
      ),
    );
  }
}