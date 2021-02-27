import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:media_combustivel/screens/meus_veiculos.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Home'),
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
                      Text(
                        "Veículo Atual",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      CupertinoButton(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.all(Radius.circular(4)),
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
                      Padding(padding: EdgeInsets.only(top: 16)),
                      Text(
                        "Opções/atalhos",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: CupertinoButton.filled(
                                padding: EdgeInsets.zero,
                                child: Text("Abastercer"),
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              MeusVeiculosScreen(),
                                        ),
                                      )
                                      .then((value) => {});
                                },
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: CupertinoButton.filled(
                                padding: EdgeInsets.zero,
                                child: Text("Apurar Média"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: CupertinoButton.filled(
                                padding: EdgeInsets.zero,
                                child: Text("Meus Veículos"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: CupertinoButton.filled(
                                padding: EdgeInsets.zero,
                                child: Text("Abastecidas"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: CupertinoButton.filled(
                                padding: EdgeInsets.zero,
                                child: Text("Totais por Mês"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: CupertinoButton.filled(
                                padding: EdgeInsets.zero,
                                child: Text("Postos Melhores"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
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
