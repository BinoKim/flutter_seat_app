import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBottom extends StatelessWidget {

  int? selectedRow;
  int? selectedCol;

  SeatBottom(this.selectedRow, this.selectedCol);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text(
            selectedRow == null && selectedCol == null
              ? "선택된 좌석이 없습니다."
              : "$selectedRow - $selectedCol",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 200,
            height: 56,
            child: ElevatedButton(onPressed: () {
              showCupertinoDialog(context: context, builder: (context) {
                return CupertinoAlertDialog(
                  title: Text("예약 확인"),
                  content: Text("예약 하시겠습니까?"),
                  actions: [
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("취소"),
                    ),
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      onPressed: () {},
                      child: Text("확인"),
                    ),
                  ],
                );
              },);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
              child: Text(
                "Book Now",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}