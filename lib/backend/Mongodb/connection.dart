import 'package:get/get.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ConnectDatabase extends GetxController {
  late Db db;

  @override
  Future<void> onInit() async {
    super.onInit();
    await connectToDatabase();
  }

  Future<void> connectToDatabase() async {
    try {
      db = Db(
          'mongodb://rayhanp1011:R2022078@cluster0-shard-00-00.k7kzv.mongodb.net:27017,cluster0-shard-00-01.k7kzv.mongodb.net:27017,cluster0-shard-00-02.k7kzv.mongodb.net:27017/?ssl=true&replicaSet=atlas-xxxxx-shard-0&authSource=admin&retryWrites=true&w=majority');
      await db.open();
      
    } catch (e) {
      print('Failed to connect to MongoDB: $e');
    }
  }

  @override
  void onClose() {
    if (db.state == State.open) {
      db.close();
    }
    super.onClose();
  }
}
