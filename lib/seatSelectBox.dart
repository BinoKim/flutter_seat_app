import 'package:flutter/material.dart';

class SeatSelectBox extends StatelessWidget {

  int? selectedRow;
  int? selectedCol;

  SeatSelectBox(this.selectedRow, this.selectedCol, this.onSelected);

  void Function (int row, int col) onSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Screen",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          row(1),
          row(2),
          row(3),
          row(4),
          row(5),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                label("Available", Colors.grey),
                SizedBox(width: 20,),
                label("Selected", Colors.amber),
              ],
            ),
          ),
        ],
      )
    );
  }

  Row label(String status, Color color) {
    return Row(
      children: [
        Text(status),
        SizedBox(width: 5,),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }

  Widget row(int n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "$n",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            seat(n, 1),
            seat(n, 2),
            seat(n, 3),
            seat(n, 4),
            seat(n, 5),
            seat(n, 6),
            seat(n, 7),
            seat(n, 8),
            seat(n, 9),
            seat(n, 10),
            ],
          ),
      
    );
  }

  Widget seat(int rowNum, int colNum) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: GestureDetector(
          onTap: () {
            onSelected(rowNum, colNum);
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: rowNum == selectedRow && colNum == selectedCol
                  ? Colors.amber
                  : Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ),
    );
  }

}