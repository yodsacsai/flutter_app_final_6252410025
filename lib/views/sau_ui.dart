import 'package:flutter/material.dart';

class SauUI extends StatefulWidget {
  const SauUI({Key? key}) : super(key: key);

  @override
  _SauUIState createState() => _SauUIState();
}

class _SauUIState extends State<SauUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue[700],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'TO',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.yellow[700]
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'SOUNTEAST ASIA UNIVERSITY',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red[700]
                ),
              ),
              Image.asset('assets/images/saubanner1.jpg'),
              SizedBox(
                height: 20,
              ),
              Text(
                'ทางเลือกใหม่ของโลกดิจิทัล',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue[700],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'เริ่มต้นที่นี่',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.red[700]
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/saubanner2.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
