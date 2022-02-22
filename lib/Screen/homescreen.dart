

import 'package:awesomitylab/Screen/Entertasks.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get s => null;

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
          ),
        ),
        Positioned(
          top: 90,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: Card(
              //  child: Text("Trending", style: TextStyle(color: Color(0xff0C0D0D), fontSize: 15.0),),
              elevation: 8,
              margin: EdgeInsets.all(20),
              color: Colors.white,

              child: GridView(
                  padding: const EdgeInsets.all(30),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  children: <Widget>[
                   
                       Card(
                        margin: const EdgeInsets.only(top: 80.0),
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
                      margin: const EdgeInsets.only(top: 80.0),
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
                      margin: const EdgeInsets.only(top: 80.0),
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
                      margin: const EdgeInsets.only(top: 80.0),
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
        Positioned(
          top: 500,
          child: Column(
            children: [
              const Text(
                'Nothing Here',
                style: TextStyle(
                    color: Color(0xff0C0D0D),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Just as your crush replies',
                style: TextStyle(
                    color: Color(0xff495D69),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              new SizedBox(
                
                  width: 250.0,
                  height: 50.0,
                  
                  child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
              primary: const Color(0xff0C0D0D),),
                      onPressed: () {
                        Navigator.push(
                          context,
                        MaterialPageRoute(
                                  builder: (context) => const EnterTasks()));
                      }, 
                      child: const Text(
                        'Create Task',
                         style: TextStyle(
                    color: Colors.white,
                        ))),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
    //     )
    //              floatingActionButton: Column(
    //     mainAxisAlignment: MainAxisAlignment.end,
    //     children: [
    //       Container(
    //         height:48,
    //         child: FloatingActionButton(
    //           backgroundColor: Colors.blueGrey[100],
    //           onPressed: () {
    //                  Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => SelectContacts()),
    //          );
    //           },
    //           child: Icon(Icons.chat,color: Colors.blueGrey[900],
    //           ),
    //         ),
        
    //       ) 
        )
      ],
    );
  }
}
