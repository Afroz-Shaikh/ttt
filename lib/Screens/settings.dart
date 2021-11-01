import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class Setting extends StatelessWidget {
  const Setting({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'A simple Tic-Tac- Toe app ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text("Shaikh Afroz",
            //     style: TextStyle(
            //         color: Colors.blue,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 50)),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                child: Text("click here"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AssetGiffyDialog(
                            buttonOkColor: Colors.blue,
                            buttonCancelColor: Colors.red,
                            image: Image.asset('assets/rick.gif'),
                            //imageUrl:"https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                            title: Text('Built by Shaikh Afroz',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600)),
                            description: Text(
                              'A simple tic tac toe app created by Shaikh Afroz',
                              textAlign: TextAlign.center,
                            ),
                            //entryAnimation: EntryAnimation.BOTTOM_TOP,
                            onOkButtonPressed: () {},
                          ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
