import 'package:flutter/material.dart';
import 'list_page.dart';

class DetailPage extends StatelessWidget {
  final int index;


  const DetailPage(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
          'Elemento:$index',
          style: const TextStyle(fontSize: 24),
        ),
        Text("")
          ],
        ),
        
      ),
    );
  }
}
