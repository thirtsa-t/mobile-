import 'package:flutter/material.dart';

class displayTask extends StatefulWidget {
  const displayTask({Key? key}) : super(key: key);

  @override
  _displayTaskState createState() => _displayTaskState();
}

class _displayTaskState extends State<displayTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 30),
        height: 200,
        width: 500,
        child: Image.asset(
          'assets/image/pic.webp',
          fit: BoxFit.cover,
        ),
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, right: 130),
            child: SizedBox(
              width: 100,
              height: 20,
              child: RaisedButton(
                color: const Color(0xff313a4a),
                onPressed: () {
                  //              Navigator.push(
                  //  context,
                  //   MaterialPageRoute(builder: (context) => displayTask()),
                  // );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(0xff313a4a), width: 1.5)),
                textColor: Colors.white,
                child: Text("Medium"),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                ),
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 40,
            ),
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {},
            ),
          ),
          // ignore: unnecessary_new
          Container(
            margin: EdgeInsets.only(left: 50),
            child: new SizedBox(
              width: 100.0,
              height: 50.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff4f5f6),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    // MaterialPageRoute(
                    //           builder: (context) => const EnterTasks()));
                  },
                  child: const Text('Done',
                      style: TextStyle(
                        color: Colors.black,
                      ))),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            child: const Text(
              'Buy hand sanitizers',
              style: TextStyle(
                  color: Color(0xff0C0D0D),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child:Text('Description',
             style: TextStyle(
                  color: Color(0xff0C0D0D),
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            )
          ),
            Container(
            child:Text('Call HB to confirm with the quantity and the price remember the TIN number too',
             style: TextStyle(
                  color: Color(0xff0C0D0D),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )
          )
        ],
      )
    ]));
  }
}
