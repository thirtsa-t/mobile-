import 'dart:io';

import 'package:awesomitylab/Screen/homescreen.dart';
import 'package:awesomitylab/Screen/tasks.dart';
import 'package:awesomitylab/main.dart';

import 'package:awesomitylab/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:images_picker/images_picker.dart';

import '../model/todo.dart';
import 'inputdecoration.dart';

class EnterTasks extends StatefulWidget {
  const EnterTasks({Key? key}) : super(key: key);

  @override
  _EnterTasksState createState() => _EnterTasksState();
}

class _EnterTasksState extends State<EnterTasks> {
  GlobalKey<FormState> _formkey = new GlobalKey();
  final image = TextEditingController();
  final title = TextEditingController();

  final description = TextEditingController();
  final priority = TextEditingController();
  String? path;
  late String uploadedImage;
  late File file;

  late Box<Todo> todoBox;
  @override
  void initState() {
    super.initState();
    todoBox = Hive.box<Todo>(TODO_BOX);
  }

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
        uploadedImage = res[0].path;
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
                color: Colors.black,
              ))),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 10.0, top: 10.0),
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
                //
                SizedBox(
                  height: 20,
                ), //padding: EdgeInsets.symmetric(horizontal: 15),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text("Add Image",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: kBoxDecorationStyle,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: image,
                        showCursor: true,
                        readOnly: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'MontSerrat',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(top: 74.0, left: 84.0),
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
                SizedBox(
                  height: 20,
                ),

                // SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text("Title", style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: title,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter title ";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "Task title(140 Characters)",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.only(left: 10.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text("Description",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: description,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter description";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "240 Characters",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  ),
                  minLines: 3,
                  maxLines: 4,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child:
                        Text("Priority", style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: priority,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter priority";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "LOW",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.only(left: 10.0),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () async {
                    //check form validation
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      //to save data into hive
                      Todo todo = Todo(
                          image: "$uploadedImage",
                          title: title.text,
                          description: description.text,
                          priority: priority.text,
                          createDate: DateTime.now(),
                          modifiedDate: DateTime.now(),
                          status: '');
                      await todoBox.add(todo);
                      //cleaning text field after save
                      title.clear();
                      description.clear();
                      priority.clear();
                      image.clear();

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                    title: '',
                                  )));
                    }
                  },
                  
                  child: Text(
                    "CREATE TASK",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
