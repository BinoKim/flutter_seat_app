import 'package:flutter/material.dart';
import 'package:flutter_seat_app/seatBottom.dart';
import 'package:flutter_seat_app/seatSelectBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SeatPage(),
    );
  }
}

class SeatPage extends StatefulWidget {
  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {

  int? selectedRow;
  int? selectedCol;

  void onSelected (int row, int col) {
    setState(() {
      selectedRow = row;
      selectedCol = col;
    });
  }

  @override
  Widget build(Object context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("SEATS"),
         
    ),
    backgroundColor: Colors.grey[200],
    body: Column(children: [
      SeatSelectBox(selectedRow, selectedCol, onSelected),
      SeatBottom(selectedRow, selectedCol),
    ],),
   );
  }
}
