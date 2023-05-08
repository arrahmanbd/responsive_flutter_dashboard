import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(Icons.error_outline,size: 96,color: Colors.primaries[6],),
          const  Text('404, Page Not Found',style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}