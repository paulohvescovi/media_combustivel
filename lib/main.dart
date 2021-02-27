import 'package:flutter/cupertino.dart';
import 'package:media_combustivel/screens/alcool_ou_gasolina.dart';
import 'package:media_combustivel/screens/home.dart';
import 'package:media_combustivel/screens/meus_veiculos.dart';
import 'package:media_combustivel/screens/resumo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      title: 'Cupertino App',
      home: CupertinoStoreHomePage(),
    );
  }
}

class CupertinoStoreHomePage extends StatefulWidget {
  @override
  _CupertinoStoreHomePageState createState() => _CupertinoStoreHomePageState();
}

class _CupertinoStoreHomePageState extends State<CupertinoStoreHomePage> {
  CupertinoTabController tabController = new CupertinoTabController();

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: tabController,
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text('Resumo Geral'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            title: Text('Álcool Ou Gas.'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: HomeScreen(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ResumoGeralScreen(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AlcoolOuGasolinaScreen(),
              );
            });
            break;
          default:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: HomeScreen(),
              );
            });
            break;
        }
        return returnValue;
      },
    );
  }
}
