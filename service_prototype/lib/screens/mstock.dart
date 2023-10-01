import 'dart:html';

import 'package:flutter/material.dart';

class MstockService extends StatelessWidget {
  const MstockService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true, //body 위에 appbar
      body: SingleChildScrollView(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/background2.jpg',
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
