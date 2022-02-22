import 'dart:io';

import 'package:awesomitylab/Screen/tasks.dart';
import 'package:awesomitylab/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:images_picker/images_picker.dart';

import 'inputdecoration.dart';

class EnterTasks extends StatefulWidget {
  const EnterTasks({Key? key}) : super(key: key);

  @override
  _EnterTasksState createState() => _EnterTasksState();
}


class _EnterTasksState extends State<EnterTasks> {
  
GlobalKey<FormState> _formkey = new GlobalKey();
final image = TextEditingController();
String? path;
late String uploadedImage;
late File file;
Future pickImage() async {
  //directory
  final dir = await getTemporaryDirectory();
  //select image from gallery
  List<Media>? res = await ImagesPicker.pick(
    count: 1,
    pickType: PickType.image,
   
    // maxSize: 500,
    // cropOpt: CropOption(
    //   aspectRatio: CropAspectRatio.wh16x9,
    // ),
  );
  print(res);
  if (res != null) {
    print(res.map((e) => e.path).toList());
    
    setState(() {
      path = res[0].thumbPath;
    });
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ))),
      body: Container(
          child: SingleChildScrollView(
              child: Form(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: (Text(
                  'New task',
                  style: TextStyle(
                      color: Color(0xff2C2834),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 20.0, right: 20.0, top: 30, bottom: 30),
            //   //padding: EdgeInsets.symmetric(horizontal: 15),
            Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'addImage',
                    style: TextStyle(
                      color: Color(0xFF0C0D0D),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
                  alignment: Alignment.center,
                  decoration: kBoxDecorationStyle,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                     controller:image,
                    showCursor: true,
                    readOnly: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MontSerrat',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                       contentPadding: EdgeInsets.only(top: 74.0, left: 84.0),

                      hintText: 'Tap to Add your Image',
                      hintStyle: kHintTextStyle,
                    ),
                    onTap: () {
                      pickImage();
                     },
                    minLines: 7,
                    maxLines: 7,
                  ),
                ),
              ],
            ),

            // SizedBox(height: 16),
            Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'addImage',
                    style: TextStyle(
                      color: Color(0xFF0C0D0D),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  alignment: Alignment.center,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MontSerrat',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      hintText: 'Tap to Add your Image',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'addImage',
                    style: TextStyle(
                      color: Color(0xFF0C0D0D),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  alignment: Alignment.center,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MontSerrat',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      hintText: 'Tap to Add your Image',
                      hintStyle: kHintTextStyle,
                    ),
                    minLines: 7,
                    maxLines: 7,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'addImage',
                    style: TextStyle(
                      color: Color(0xFF0C0D0D),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  alignment: Alignment.center,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MontSerrat',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      hintText: 'Tap to Add your Image',
                      hintStyle: kHintTextStyle,
                    ),
                    minLines: 7,
                    maxLines: 7,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  width: 100,
                  height: 50,
                  child: RaisedButton(
                    color: const Color(0xFF0C0D0D),
                    onPressed: () {
                      
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => tasksScreen()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Create Task",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
          ])))),
    );
  }
}
