import 'package:flutter/material.dart';

class ReelsDownload extends StatefulWidget {
  @override
  _ReelsDownloadState createState() => _ReelsDownloadState();
}

class _ReelsDownloadState extends State<ReelsDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0009E),
      appBar: AppBar(
        backgroundColor: Color(0xffD0009E),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: new TextField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(50.0),
                      ),
                    ),
                    filled: true,
                    hintText: "HTTPS://WWW.INSTAGRAM.COM/...",
                    fillColor: Colors.white70),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white)),
              onPressed: () {},
              color: Colors.white,
              textColor: Color(0xffD0009E),
              child: Text("Download".toUpperCase(),
                  style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}