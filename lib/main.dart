import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dicee',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePage createState() => _DicePage();
}

class _DicePage extends State<DicePage> {
  int index_first = 1;
  int index_second = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index_first = new Random().nextInt(6) + 1;
                  });
                },
                style: ButtonStyle(
                    elevation: MaterialStatePropertyAll<double>(0),
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.red)),
                child: Image.asset(
                  "images/dice${index_first}.png",
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    index_second = new Random().nextInt(6) + 1;
                  });
                },
                style: ButtonStyle(
                    elevation: MaterialStatePropertyAll<double>(0),
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.red)),
                child: Image.asset(
                  "images/dice${index_second}.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
