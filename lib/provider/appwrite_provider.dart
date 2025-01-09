import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;

class AppwriteProvider {
  Account? account;
  Client client = Client();
  AppwriteProvider() {
    client
        .setEndpoint("https://cloud.appwrite.io/v1")
        .setProject("677196650025f1b36f7f")
        .setSelfSigned(status: true);
    account = Account(client);
  }

 Future<models.User> signUp(Map<String, dynamic> map) async {
    // Create a new user
    final response = await account!.create(
      userId:  map["userId"], // Generate a unique user ID
      email: map["email"], // User's email
      password: map["password"], // User's password
      name: map["name"], // Optional: User's name
    );
    return response; // Return the created user
  }
}
