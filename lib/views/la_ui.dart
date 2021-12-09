import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaUI extends StatefulWidget {
  const LaUI({ Key? key }) : super(key: key);

  @override
  _LaUIState createState() => _LaUIState();
}

class _LaUIState extends State<LaUI> {
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
                    'LAW',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.yellow[700],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/la.jpg',
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'สาขาวิชานิติศาสตร์',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              
              SizedBox(
                height: 35,
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