import 'package:dean_institute_mobile_app/pages/home_items/sample_data.dart';
import 'package:dean_institute_mobile_app/widgets/course_list_item.dart';
import 'package:dean_institute_mobile_app/widgets/custom_top_app_bar.dart';
import 'package:dean_institute_mobile_app/widgets/dynamic_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dean_institute_mobile_app/data/character_api.dart';
import 'package:dean_institute_mobile_app/model/character.dart';
//import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'dart:convert';

class CharacterList extends StatefulWidget {
//  CharacterList({Key key}) : super(key: key);

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
 //List<Character> characterList = new List<Character>();
   

var characterList= <Character>[]; 
var characterList1= <Character>[]; 
var characterList2= <Character>[]; 
var characterList3= <Character>[]; 
  void getCharactersfromApi() async {
    CharacterApi.getCharacters().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        characterList = list.map((model) => Character.fromJson(model)).toList();
      });
    });
     void getCharactersfromApi1() async {
    CharacterApi1.getCharacters().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        characterList1 = list.map((model) => Character.fromJson(model)).toList();
      });
    });
     void getCharactersfromApi2() async {
    CharacterApi2.getCharacters().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        characterList2 = list.map((model) => Character.fromJson(model)).toList();
      });
    });
     void getCharactersfromApi3() async {
    CharacterApi3.getCharacters().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        characterList3 = list.map((model) => Character.fromJson(model)).toList();
      });
    });
  }
  }
  }
  }

  @override
  void initState() {
    super.initState();
    getCharactersfromApi();
  }

  

 @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFE9E9E9),
        appBar: AppBar( 
            //  trailing: Icon(Icons.search),
          title: Text("courses"),
        ),
        body: Container(
          //child: ListView.builder(
              child: ListView.builder(
              itemCount: characterList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(characterList[index].category_name),
                  subtitle: Text(characterList[index].slug),
                  //leading: CircleAvatar(
                  //  background 
                   leading: Image.network("https://deaninstitute.fastrider.co//"+characterList[index].category_logo),
                 // ),
                );
              }),
        ));
  }
}

