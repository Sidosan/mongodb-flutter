import 'bloc.dart';
import 'package:mongo_dart/mongo_dart.dart';

main(List<String> arguments) async {
  Bloc bloc = Bloc();

  Db db = Db('mongodb://admin:admin@localhost:27017/test');

  DbCollection coll;

  await db.open();
  coll = db.collection("count");
  print('conexao realizada com Banco $coll');
  var val = await coll.findOne({'_id': 'total'});

  bloc.output.listen((dynamic data) {
    print(data);
  });

  int qty = val['qty'].toInt();

  bloc.addText(qty);

  await db.close();
}
