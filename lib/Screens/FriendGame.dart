import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FriendGame extends StatefulWidget {
  @override
  _FriendGameState createState() => _FriendGameState();
}

class _FriendGameState extends State<FriendGame> {
  bool oturn = true;
  List<String> showxo = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.blue, statusBarColor: Colors.black));
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              color: Colors.black,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('Player X',style: TextStyle(color: Colors.white),),
                  Text('Player O',style: TextStyle(color: Colors.white),)

                ],
              )
            )),
            Expanded(
              flex: 3,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _tap(index);
//          oturn=false;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff262626))),
                      child: Center(
                        child: Text(
                          showxo[index],
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.black,
            )),
          ],
        ),
      ),
    ));
  }

  void _tap(int index) {
    setState(() {
      if (oturn == true && showxo[index] == '') {
        showxo[index] = 'O';
      } else if (!oturn && showxo[index] == '') showxo[index] = 'X';
      oturn = !oturn;
      _checkWin();
    });
  }

  void _checkWin() {
    //with 0

    // checks 1st row
    if (showxo[0] == showxo[1] && showxo[0] == showxo[2] && showxo[0] != '') {
      _alert(showxo[0]);
    }

    // checks 2nd row
    if (showxo[3] == showxo[4] && showxo[3] == showxo[5] && showxo[3] != '') {
      _alert(showxo[3]);
    }

    // checks 3rd row
    if (showxo[6] == showxo[7] && showxo[6] == showxo[8] && showxo[6] != '') {
      _alert(showxo[6]);
    }

    // checks 1st column
    if (showxo[0] == showxo[3] && showxo[0] == showxo[6] && showxo[0] != '') {
      _alert(showxo[0]);
    }

    // checks 2nd column
    if (showxo[1] == showxo[4] && showxo[1] == showxo[7] && showxo[1] != '') {
      _alert(showxo[1]);
    }

    // checks 3rd column
    if (showxo[2] == showxo[5] && showxo[2] == showxo[8] && showxo[2] != '') {
      _alert(showxo[2]);
    }

    // checks diagonal
    if (showxo[6] == showxo[4] && showxo[6] == showxo[2] && showxo[6] != '') {
      _alert(showxo[6]);
    }

    // checks diagonal
    if (showxo[0] == showxo[4] && showxo[0] == showxo[8] && showxo[0] != '') {
      _alert(showxo[0]);
    }

//    else if(filledBoxes == 9){
//      _showDrawDialog();
//    }
  }

  void _alert(String winner) {
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.blue, title: Text('winner is ' + winner,textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            FlatButton(child: Text('Play again',style: TextStyle(color: Colors.white),),onPressed: (){_startagain(); Navigator.of(context).pop();},)
          ]
            ,);
        });


  }
  void _startagain(){
    setState(() {
      for(int i=0; i<9; i++){
        showxo[i] = '';
      }
    });
    }

  }

