import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom Sheet Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bottom Sheets Example'),
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
  // Function to show Modal Bottom Sheet
  void _showModalBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.deepPurple,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 400,
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);// close the bottomSheet
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Text(
                "Hello in Modal Bottom Sheet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Function to show Persistent Bottom Sheet
  void _showPersistentBottomSheet(BuildContext context) {
    showBottomSheet(
      backgroundColor: Colors.purple,
      context: context,
      showDragHandle: true,
      builder: (BuildContext context) {
        return SizedBox(
          height: 400,
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context); //close the bottomSheet
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Text(
                "Hello in Persistent Bottom Sheet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _showModalBottomSheet, //call the model bottom sheet
              child: const Text("Show Modal Bottom Sheet"),
            ),
            const SizedBox(height: 20),
            Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  onPressed: () => _showPersistentBottomSheet(context),// //call the Persistent bottom sheet
                  child: const Text("Show Persistent Bottom Sheet"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
