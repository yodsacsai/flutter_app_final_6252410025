import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtSciUI extends StatefulWidget {
  const ArtSciUI({Key? key}) : super(key: key);

  @override
  _ArtSciUIState createState() => _ArtSciUIState();
}

class _ArtSciUIState extends State<ArtSciUI> {
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
                    'ARTS and SCIS',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/artsci.jpg',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'สาขาวิชาดิจิทัลมีเดีย',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิชาเทคโนโลยีดิจิทัลและนวัตกรรม',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิชาภาษาอังกฤษธุรกิจ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'สาขาวิชารัฐประศาสนศาสตร์',
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
                    onPressed: () => launch('tel:028064500'),
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
                    onPressed: () => launch('http://sau.ac.th'),
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
