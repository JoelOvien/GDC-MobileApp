class FetchContactsModel {
  String sId;
  List<String> emergencyContacts;

  FetchContactsModel({this.sId, this.emergencyContacts});

  FetchContactsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    emergencyContacts = json['emergencyContacts'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['emergencyContacts'] = this.emergencyContacts;
    return data;
  }
}
