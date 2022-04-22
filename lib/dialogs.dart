import 'package:custom_dialog_flutter_demo/custom_dialog_box.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialogBox(
                            title: "Custom Dialog Demo",
                            descriptions:
                                "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                            text: "Yes",
                            img: Image.asset("assets/success.png"));
                      });
                },
                child: Text("Custom Dialog Success"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialogBox(
                            title: "Custom Dialog Demo",
                            descriptions:
                            """<div>
                                <h1>Demo Page</h1>
                                <p>This is a fantastic product that you should buy!</p>
                                <h3>Features</h3>
                                <ul>
                                  <li>It actually works</li>
                                  <li>It exists</li>
                                  <li>It doesn't cost much!</li>
                                </ul>
                                <p>Linking to <a href='https://github.com/mobileappsvn'>websites</a> has never been easier.</p>
                                <div style='text-align:center;font-size:25px'><br /><b>THE END</b></b></div>
                              </div>""",
                            text: "Yes",
                            img: Image.asset("assets/failure.png"),
                            align: TextAlign.left,
                        );
                      });
                },
                child: Text("Custom Dialog Failed"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
