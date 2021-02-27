import 'package:flutter/cupertino.dart';

class AlcoolOuGasolinaScreen extends StatefulWidget {
  @override
  _AlcoolOuGasolinaScreenState createState() => _AlcoolOuGasolinaScreenState();
}

class _AlcoolOuGasolinaScreenState extends State<AlcoolOuGasolinaScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Álcool ou Gasolina?'),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      CupertinoButton.filled(
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(
                                "Meu Carro/Moto",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "pressione p/ gerenciar seus veículos",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 16)),
                              Text(
                                "Média calculada do veículo acima",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Média",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    " 5.5 ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    "Km / Litro",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                    ],
                  ),
                ),
              );
            },
            childCount: 1,
          ),
        )
      ],
    );
  }
}
