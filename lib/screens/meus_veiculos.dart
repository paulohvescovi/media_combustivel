import 'package:flutter/cupertino.dart';

class MeusVeiculosScreen extends StatefulWidget {
  @override
  _MeusVeiculosScreenState createState() => _MeusVeiculosScreenState();
}

class _MeusVeiculosScreenState extends State<MeusVeiculosScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Lançar abastecimento'),
      ),
      child: SafeArea(
        child: CupertinoButton.filled(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("PAULO"),
        ),
      ),
    );
  }
}
