import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Deber'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 350.0,
              width: 550.0,
              child: Image.asset('images/novia.jpg'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green, // Color de fondo del BottomNavigationBar
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.green,),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop, color: Colors.green),
            label: 'Archivos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color: Colors.green),
            label: 'Contactos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse, color: Colors.green),
            label: 'Bandeja de entrada',
          ),
        ],
      ),
    );
  }
}
