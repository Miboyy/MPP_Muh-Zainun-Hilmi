import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muh Zainun Hilmi (202311011)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Tempat Tasbih Para Ulama NUUUU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 🔹 Fungsi tambah angka
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // 🔹 Fungsi reset angka
  void _resetCounter() {
    setState(() {
      _counter = 0; // mengembalikan angka ke nol
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 240, 140),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Perhitungan Tasbih:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      // 🔹 Dua tombol (reset + tambah)
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Tombol Reset
          FloatingActionButton(
            heroTag: "btnDelete",
            onPressed: _resetCounter, // Panggil fungsi reset
            tooltip: 'Reset',
            backgroundColor: Colors.red,
            child: const Icon(Icons.delete),
          ),
          const SizedBox(width: 16),

          // Tombol Tambah
          FloatingActionButton(
            heroTag: "btnAdd",
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
