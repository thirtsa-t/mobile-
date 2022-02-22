import 'package:awesomitylab/Screen/displaytask.dart';
import 'package:flutter/material.dart';

class tasksScreen extends StatefulWidget {
  const tasksScreen({Key? key}) : super(key: key);

  @override
  _tasksScreenState createState() => _tasksScreenState();
}

class _tasksScreenState extends State<tasksScreen> {
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 0,
          child: Container(
            color: const Color(0xff1C2834),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .35,
            child: Padding(
              padding: const EdgeInsets.only(right: 300, bottom: 230),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/image/IW_logo.png',
                      fit: BoxFit.contain, height: 42
                      ),
                 
                      Container(

                        margin: EdgeInsets.only( left:100.0 , top:30),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    
                 
                Container(
                    margin: EdgeInsets.only( left:200.0),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  
                  
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 70,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(20),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: GridView(
                    //  padding: const EdgeInsets.all(40),

                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16),
                    children: <Widget>[
                      Card(
                        color: Colors.white,
                        elevation: 8,
                        child: Column(children: const [
                          Text(
                            '0',
                            style: TextStyle(
                                color: Color(0xffC1CF16), fontSize: 26.0),
                          ),
                          Text(
                            'Total task',
                            style: TextStyle(
                                color: Color(0xff1C2834), fontSize: 15.0),
                          ),
                        ]),
                      ),
                      Card(
                        color: Colors.white,
                        elevation: 8,
                        child: Column(children: const [
                          Text(
                            '0',
                            style: TextStyle(
                                color: Color(0xffC1CF16), fontSize: 26.0),
                          ),
                          Text(
                            'Total task',
                            style: TextStyle(
                                color: Color(0xff1C2834), fontSize: 15.0),
                          ),
                        ]),
                      ),
                      Card(
                        color: Colors.white,
                        elevation: 8,
                        child: Column(children: const [
                          Text(
                            '0',
                            style: TextStyle(
                                color: Color(0xffC1CF16), fontSize: 26.0),
                          ),
                          Text(
                            'Total task',
                            style: TextStyle(
                                color: Color(0xff1C2834), fontSize: 15.0),
                          ),
                        ]),
                      ),
                    ]),
              ),
            ),
          ),
        ),
        Positioned(
          top: 300,
          child: Column(
            children: [
              const Text(
                'Buy hand sanitizers',
                style: TextStyle(
                    color: Color(0xff0C0D0D),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 100,
                  height: 30,
                  child: RaisedButton(
                    color: const Color(0xff313a4a),
                    onPressed: () {
                                   Navigator.push(
                       context,
                        MaterialPageRoute(builder: (context) => displayTask()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Color(0xff313a4a), width: 1.5)),
                    textColor: Colors.white,
                    child: Text("Medium"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 400,
          child: Row(children: [
            const Text(
              'Credit 14 feb 2021',
              style: TextStyle(
                  color: Color(0xff495D69),
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Modified 15 feb 2021',
              style: TextStyle(
                  color: Color(0xff495D69),
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Positioned(
          top: 500,
          child: Column(
            children: [
              const Text(
                'Buy hand sanitizers',
                style: TextStyle(
                    color: Color(0xff0C0D0D),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 100,
                  height: 30,
                  child: RaisedButton(
                    color: const Color(0xff313a4a),
                    onPressed: () {
                      //              Navigator.push(
                      //  context,
                      //   MaterialPageRoute(builder: (context) => BottomNavScreen()),
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
            ],
          ),
        ),
        Positioned(
          top: 600,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Credit 14 feb 2021',
                  style: TextStyle(
                      color: Color(0xff495D69),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Modified 15 feb 2021',
                  style: TextStyle(
                      color: Color(0xff495D69),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ],
    );
  }
}
