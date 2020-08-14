import 'package:flutter/material.dart';
import 'package:flutter_insta/flutter_insta.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class ReelsDownload extends StatefulWidget {
  @override
  _ReelsDownloadState createState() => _ReelsDownloadState();
}

class _ReelsDownloadState extends State<ReelsDownload> {
  FlutterInsta flutterInsta =
      FlutterInsta(); // create instance of FlutterInsta class
  TextEditingController reelController = TextEditingController();

  bool downloading = false;

  @override
  void initState() {
    super.initState();
    InitializeDownloader();
    downloadReels();
  }

  void InitializeDownloader() async {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterDownloader.initialize(
        debug: true // optional: set false to disable printing logs to console
        );
  }

  void downloadReels() async {
    String s = await flutterInsta
        .downloadReels("https://www.instagram.com/p/CDlGkdZgB2y");
    print(s);
  }

  void download() async {
    var myvideourl = await flutterInsta.downloadReels(reelController.text);
    final taskId = await FlutterDownloader.enqueue(
      url: '$myvideourl',
      savedDir: '/sdcard/Download',
      showNotification: true,
      // show download progress in status bar (for Android)
      openFileFromNotification:
          true, // click on notification to open downloaded file (for Android)
    ).whenComplete(() {
      setState(() {
        downloading = false; // set to false to stop Progress indicator
      });
    });
  }

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
                      borderSide: new BorderSide(color: Colors.transparent),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(50.0),
                      ),
                    ),
                    filled: true,
                    hintText: "HTTPS://WWW.INSTAGRAM.COM/...",
                    fillColor: Colors.transparent),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white)),
              onPressed: () {
                setState(() {
                  downloading = true; //set to true to show Progress indicator
                });
                download();
              },
              color: Colors.white,
              textColor: Color(0xffD0009E),
              child: Text("Download".toUpperCase(),
                  style: TextStyle(fontSize: 14)),
            ),
            downloading
                ? Center(
                    child:
                        CircularProgressIndicator(), //if downloading is true show Progress Indicator
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
