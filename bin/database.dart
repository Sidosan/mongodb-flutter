main(List<String> arguments) async {
  Db db = Db('mongodb://admin:admin@localhost:27017/test');

  DbCollection coll;

  await db.open();
  coll = db.collection("count");
  print('conexao realizada com Banco $coll');
  var val = await coll.findOne({'_id': 'total'});
  print('$val');
  await db.close();
}
