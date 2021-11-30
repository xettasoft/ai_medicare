import 'package:flutter/material.dart';

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Wallet Setup"),
        ),
        body: Column(
          children: [
            Expanded(child: Text("dsdsd")),
            Expanded(
              flex: 0,
              child: Text("dsdsd"),
            ),
          ],
        ));
  }
}
