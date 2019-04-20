class User {

  String uid;
  String email;
  String password;
  String firstName;
  String lastName;
  String city;
  String country;
  String pincode;
  String mobileNumber;
  String gender;
  

  User(
    this.uid, 
    this.email, 
    this.password, 
    this.firstName, 
    this.lastName, 
    this.city, 
    this.country, 
    this.gender, 
    this.mobileNumber, 
    this.pincode
    );

   
   // set object to fields
   User.map(dynamic obj){
     this.uid = obj["uid"];
     this.email = obj["email"];
     this.password = obj["password"];
     this.firstName = obj["firstName"];
     this.lastName = obj["lastName"];
     this.city = obj["city"];
     this.gender = obj["gender"];
     this.mobileNumber = obj["mobileNumber"];
     this.pincode = obj["pincode"];
   }

   Map<String, dynamic>  toMap() {
     var map = new Map<String, dynamic>();
     map["uid"] = uid;
     map["email"] = email;
     map["password"] = password;
     map["firstName"] = firstName;
     map["lastName"] = lastName;
     map["city"] = city;
     map["gender"] = gender;
     map["mobileNumber"] = mobileNumber;
     map["pincode"] = pincode;
     return map;
   }
  
}