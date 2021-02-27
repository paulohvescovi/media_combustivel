import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResumoGeralScreen extends StatefulWidget {
  @override
  _ResumoGeralScreenState createState() => _ResumoGeralScreenState();
}

class _ResumoGeralScreenState extends State<ResumoGeralScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Resumo geral'),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      CupertinoButton(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(
                                "Fiat/Palio HYT-8884",
                                style: TextStyle(
                                  fontSize: 24,
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
                              Padding(padding: EdgeInsets.only(top: 4)),
                              Divider(
                                height: 1,
                                color: Colors.black,
                              ),
                              Padding(padding: EdgeInsets.only(top: 8)),
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Container(
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Total Gasto",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Icon(
                                            CupertinoIcons.money_dollar_circle,
                                            size: 30,
                                          ),
                                          Text(
                                            "R\$ 100,00",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Flexible(
                                    child: Container(
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Total KM",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Icon(
                                            CupertinoIcons.map,
                                            size: 30,
                                          ),
                                          Text(
                                            "1.234km",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Flexible(
                                    child: Container(
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Litros Gastos",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Icon(
                                            CupertinoIcons.lab_flask,
                                            size: 30,
                                          ),
                                          Text(
                                            "34,9L",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 2,
          ),
        )
      ],
    );
  }
}
