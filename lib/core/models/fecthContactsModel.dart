class FetchContactsModel {
  String sId;
  List<EmergencyContacts> emergencyContacts;

  FetchContactsModel({this.sId, this.emergencyContacts});

  FetchContactsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    if (json['emergencyContacts'] != null) {
      emergencyContacts = new List<EmergencyContacts>();
      json['emergencyContacts'].forEach((v) {
        emergencyContacts.add(new EmergencyContacts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.emergencyContacts != null) {
      data['emergencyContacts'] = this.emergencyContacts.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EmergencyContacts {
  String sId;
  String name;
  String phone;

  EmergencyContacts({this.sId, this.name, this.phone});

  EmergencyContacts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['phone'] = this.phone;
    return data;
  }
}
