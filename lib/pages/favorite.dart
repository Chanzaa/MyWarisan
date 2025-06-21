import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyWarisan"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("upcoming features💕",style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),

    );
  }
}
