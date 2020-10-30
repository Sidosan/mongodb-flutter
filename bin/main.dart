import 'package:mongo_dart/mongo_dart.dart';

main(List<String> arguments) async {
  Db db = Db('mongodb://admin:admin@localhost:27017/test');

  ObjectId id;
  DbCollection coll;

  await db.open();
  print('connection open');

  coll = db.collection('count');

  var val = await coll.findOne(-1);
  print('$val');

  await db.close();
}
