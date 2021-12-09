import 'package:flutter/material.dart';
import 'package:flutter_app_final_6252410025/views/artsci_ui.dart';
import 'package:flutter_app_final_6252410025/views/bs_ui.dart';
import 'package:flutter_app_final_6252410025/views/en_ui.dart';
import 'package:flutter_app_final_6252410025/views/la_ui.dart';
import 'package:flutter_app_final_6252410025/views/sau_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List page = [
    SauUI(),
    EnUI(),
    ArtSciUI(),
    BsUI(),
    LaUI(),
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'SAU',
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            
            UserAccountsDrawerHeader(
              accountName: Row(
                children: [
                  Text(
                    'S',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    'U',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.yellow[500],
                    ),
                  ),
                ],
              ),
              accountEmail: Text(
                'Southeast Asia University',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow[500],
                ),
              ),
            ),
            ListTile(
              
              onTap: () {
                setState(() {
                  selectIndex = 0;
                });
              },
              title: Text(
                'SAU',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.home,
                color: Colors.blue[700],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: () {
                setState(() {
                  selectIndex = 1;
                });
              },
              title: Text(
                'วิศวกรรมศาสตร์',
                style: TextStyle(
                  fontSize: 22,
                ),
                
              ),
              trailing: Icon(
                FontAwesomeIcons.wrench,
                color: Colors.red[700],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: () {
                setState(() {
                  selectIndex = 2;
                });
              },
              title: Text(
                'ศิลปศาสตร์และวิทยาศาสตร์',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.flask,
                color: Colors.green[700],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: () {
                setState(() {
                  selectIndex = 3;
                });
              },
              title: Text(
                'บริหารธุรกิจ',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.chartLine,
                color: Colors.purple[700],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: () {
                setState(() {
                  selectIndex = 4;
                });
              },
              title: Text(
                'นิติศาสตร์',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.balanceScale,
                color: Colors.yellow[700],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: page.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlue,
        selectedItemColor: Colors.red[700],
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            label: 'SAU',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.wrench,
            ),
            label: 'EN',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.flask,
              ),
              label: 'ARTSCI'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.chartLine,
              ),
              label: 'BS'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.balanceScale,
              ),
              label: 'LA'),
        ],
      ),
    );
  }
}
