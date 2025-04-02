import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  String userName="";
  String Password="";
  String mail="";
  String addclasses="";
 

  UserProvider({
this.userName="",
this.Password="",
this.mail="",

  });

  List<String> _items = []; 

  List<String> get items => _items; 

  void addItem(String newItem) {
    _items.add(newItem);
    print("dddddddddddddd $_items");//data retrieve cheyumbo call akunila
    notifyListeners();
  }
  void updateClasses(List<String> classes) {
    _items = classes;
    notifyListeners();
  }
  void  changeUsername({
    required String newUsername,
     required String newPassword,
     required String newmail,
     
  })async{
    userName=newUsername;
    mail=newmail;
    Password=AutofillHints.newPassword;
  


    notifyListeners();
  }

}