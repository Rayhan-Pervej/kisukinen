class UserModel {
  final String id;
   String firstName;
   String lastName;
   final String email;
   String phoneNumber;
   String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$firstName $lastName';
  
  static List<String> nameParts(fullName)=> fullName.spilt();
  static String generateUsername(fullName){
    List<String> nameParts = fullName.spilt(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length>1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstName$lastName";
    String unsernameWithPrefix ="cwt_$camelCaseUsername";
    return unsernameWithPrefix;
  }

  static UserModel empty() =>UserModel(id: "", firstName: "", lastName:"", email:"", phoneNumber:" ", profilePicture: " ");

  Map<String, dynamic> toJson(){
    return{
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

}


