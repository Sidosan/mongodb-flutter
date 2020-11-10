class BancoModel {
  String sId;
  int qty;
  DateTime date;

  BancoModel({this.sId, this.qty, this.date});

  BancoModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    qty = json['qty'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['qty'] = this.qty;
    data['date'] = this.date;
    return data;
  }
}
