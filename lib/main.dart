import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Kombination Aufgabe5"),
        ),
        body: const Aufgabe5(),
      ),
    );
  }
}

class Aufgabe5 extends StatelessWidget {
  const Aufgabe5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _showAlertDialog(context);
          },
          child: const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.touch_app),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Text("Tap me"),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(Icons.follow_the_signs),
                const SizedBox(width: 8.0),
                const Expanded(
                  child: Text("Follow The Signs--------------->"),
                ),
                TextButton(
                  onPressed: () {
                    _showSnackbar(context, "TextButton pressed");
                  },
                  child: const Text("Press me"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert Dialog"),
          content: const Text("Do you want to show a Snackbar?"),
          actions: <Widget>[
            TextButton(
              child: const Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
                _showSnackbar(context, "Snackbar");
              },
            ),
          ],
        );
      },
    );
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
