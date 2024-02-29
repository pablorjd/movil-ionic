import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Paginas(),
      bottomNavigationBar: _Navegacion(),
    );
  }

}

class _Navegacion extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      items: 
    [
      BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Para Ti'),
      BottomNavigationBarItem(icon: Icon(Icons.public),label: 'Encabezados')
    ]
    );
  }
}

class _Paginas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        )
      ],
    );
  }
}
