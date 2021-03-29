import 'package:eas/core/models/customContactModel.dart';
import 'package:easy_contact_picker/easy_contact_picker.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class GetContactsPage extends StatefulWidget {
  @override
  _GetContactsPageState createState() => _GetContactsPageState();
}

class _GetContactsPageState extends State<GetContactsPage> with AutomaticKeepAliveClientMixin {
  List<Contact> _list = new List();
  bool _isChecked = true;
  List<Color> selected;
  final EasyContactPicker _contactPicker = new EasyContactPicker();
  Widget _getItemWithIndex(Contact contact) {
    return ListTile(
      dense: true,
      title: Text(contact.fullName),
      subtitle: Text(
        contact.phoneNumber,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: CheckboxListTile(
        value: _isChecked,
        onChanged: (val) {
          setState(() {
            _isChecked = val;
          });
        },
      ),
    );
  }

  _openAddressBook() async {
    // 申请权限
    Map<PermissionGroup, PermissionStatus> permissions =
        await PermissionHandler().requestPermissions([PermissionGroup.contacts]);

    // 申请结果
    PermissionStatus permission =
        await PermissionHandler().checkPermissionStatus(PermissionGroup.contacts);

    if (permission == PermissionStatus.granted) {
      _getContactData();
    }
  }

  _getContactData() async {
    List<Contact> list = await _contactPicker.selectContacts();
    setState(() {
      _list = list;
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _openAddressBook();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Contacts"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            selected = List.filled(_list.length, Colors.white);
            return _getItemWithIndex(_list[index]);
          },
          itemCount: _list.length,
        ));
  }
}
