import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EnUI extends StatefulWidget {
  const EnUI({Key? key}) : super(key: key);

  @override
  _EnUIState createState() => _EnUIState();
}

class _EnUIState extends State<EnUI> {

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FACUTY OF ',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'ENGINEERING',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.red[700],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/en.jpg',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'สาขาวิศวกรรมสิ่งแวดล้อม',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิศวกรรมความปลอดภัย',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิศวกรรมคอมพิวเตอร์',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิศวกรรมโยธา',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิศวกรรมไฟฟ้า',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิศวกรรมอุตสาหการ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิศวกรรมเครื่องกล',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () =>launch('tel:028064500'),
                    icon: Icon(
                      Icons.phone_in_talk_sharp,
                    ),
                    iconSize: 50,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  IconButton(
                    onPressed: () =>launch('http://sau.ac.th'),
                    icon: Icon(
                      Icons.web_outlined,
                    ),
                    iconSize: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
