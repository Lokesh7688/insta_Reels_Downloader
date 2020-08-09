import 'package:flutter/material.dart';
import 'Reels.dart';
import 'profile.dart';
import 'package:flutter_insta/flutter_insta.dart';

class ReelsDownloader extends StatefulWidget {
  @override
  _ReelsDownloaderState createState() => _ReelsDownloaderState();
}

class _ReelsDownloaderState extends State<ReelsDownloader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image(
                      image: NetworkImage(
                          'https://www.edigitalagency.com.au/wp-content/uploads/instagram-logo-and-icon-black-and-white-text-glyph-png.png')),
                  Text(
                    'REELS Downloader',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReelsDownload()));
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Download REElS".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("View Profile".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
