import 'package:flutter/material.dart';

class InfoDetailsUser extends StatelessWidget {
  const new({
    super.key,
    required this.title,
    required this.value,
    required this.addClick,
    required this.removeClick,
  });
  final String title;
  final int value;
  final void Function() addClick;
  final void Function() removeClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff24263B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: .w300,
                color: Color(0xff8B8C9E),
              ),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: .bold,
                color: Color(0xffFFFFFF),
              ),
            ),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                IconButton(
                  onPressed: addClick,
                  icon: Icon(Icons.add, size: 40, color: Colors.white),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xff8B8C9E),
                    elevation: 50,
                    shadowColor: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: removeClick,
                  icon: Icon(Icons.remove, size: 40, color: Colors.white),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xff8B8C9E),
                    elevation: 50,
                    shadowColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
