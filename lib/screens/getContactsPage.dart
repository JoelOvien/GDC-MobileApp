import 'package:eas/core/models/customContactModel.dart';
import 'package:eas/core/view.models/contactsVM.dart';
import 'package:easy_contact_picker/easy_contact_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class GetContactsPage extends StatefulWidget {
  @override
  _GetContactsPageState createState() => _GetContactsPageState();
}

class _GetContactsPageState extends State<GetContactsPage> {
  List<Contact> _list = [];
  final EasyContactPicker _contactPicker = new EasyContactPicker();
  List<String> selectedNum = [];
  _openAddressBook() async {
    //check permission status
    Map<PermissionGroup, PermissionStatus> permissions =
        await PermissionHandler().requestPermissions([PermissionGroup.contacts]);

    // get permission status
    PermissionStatus permission =
        await PermissionHandler().checkPermissionStatus(PermissionGroup.contacts);

    if (permission == PermissionStatus.granted) {
      _getContactData();
    }
  }

//fecth contacts
  _getContactData() async {
    List<Contact> list = await _contactPicker.selectContacts();
    setState(() {
      _list = list;
    });
  }

  @override
  void initState() {
    super.initState();
    _openAddressBook();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          print(selectedNum);
          if (selectedNum.isNotEmpty) {
            ContactsVM().uploadUsersContacts(selectedNum);
          }
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Contacts"),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          List _isChecked = List.filled(_list.length, false);

          return StatefulBuilder(builder: (context, setState) {
            return ListTile(
              dense: true,
              title: Text(_list[index].fullName),
              subtitle: Text(
                _list[index].phoneNumber,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              trailing: Checkbox(
                value: _isChecked[index],
                onChanged: (val) {
                  if (_isChecked[index] != true) {
                    print("just selected");
                    selectedNum.add(_list[index].phoneNumber);
                  } else {
                    print("unselected");
                    selectedNum.remove(_list[index].phoneNumber);
                  }
                  setState(() {
                    _isChecked[index] = val;
                  });
                },
              ),
            );
          });
        },
      ),
    );
  }
  // Widget _getItemWithIndex(Contact contact) {
  //                   // _getItemWithIndex(_list[index]);

  //   return ListTile(
  //     dense: true,
  //     title: Text(contact.fullName),
  //     subtitle: Text(
  //       contact.phoneNumber,
  //       style: TextStyle(
  //         color: Colors.grey,
  //       ),
  //     ),
  //     trailing: Checkbox(
  //       value: _isChecked,
  //       onChanged: (val) {
  //         setState(() {
  //           _isChecked = val;
  //         });
  //       },
  //     ),
  //   );
  // }
}

class SignUpGetContactsPage extends StatefulWidget {
  @override
  _SignUpGetContactsPageState createState() => _SignUpGetContactsPageState();
}

class _SignUpGetContactsPageState extends State<SignUpGetContactsPage> {
  List<Contact> _list = [];
  final EasyContactPicker _contactPicker = new EasyContactPicker();
  List<String> selectedNum = [];
  _openAddressBook() async {
    //check permission status
    Map<PermissionGroup, PermissionStatus> permissions =
        await PermissionHandler().requestPermissions([PermissionGroup.contacts]);

    // get permission status
    PermissionStatus permission =
        await PermissionHandler().checkPermissionStatus(PermissionGroup.contacts);

    if (permission == PermissionStatus.granted) {
      _getContactData();
    }
  }

//fecth contacts
  _getContactData() async {
    List<Contact> list = await _contactPicker.selectContacts();
    setState(() {
      _list = list;
    });
  }

  @override
  void initState() {
    super.initState();
    _openAddressBook();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        child: Icon(Icons.save),
        onPressed: () {
          print(selectedNum);
          if (selectedNum.isNotEmpty) {
            print(selectedNum);
            // ContactsVM().uploadUsersContacts(selectedNum);
          } else {
            print("sfres");
            Get.snackbar("No contacts", "Please select a contact");
          }
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Contacts"),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          List _isChecked = List.filled(_list.length, false);

          return StatefulBuilder(builder: (context, setState) {
            return ListTile(
              dense: true,
              title: Text(_list[index].fullName),
              subtitle: Text(
                _list[index].phoneNumber,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              trailing: Checkbox(
                value: _isChecked[index],
                onChanged: (val) {
                  if (_isChecked[index] != true) {
                    print("just selected");
                    selectedNum.add(_list[index].phoneNumber);
                  } else {
                    print("unselected");
                    selectedNum.remove(_list[index].phoneNumber);
                  }
                  setState(() {
                    _isChecked[index] = val;
                  });
                },
              ),
            );
          });
        },
      ),
    );
  }
}
