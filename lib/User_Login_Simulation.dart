void main(){
  User user=User(username: "User", password: 1234);
  user.login("User", 1234);
}

class User{
  String username;
  int password;
  User({required this.username,required this.password});

  void login(String username,int password){
    String hardCodedUserName="User";
    int hardcodedPassword=1234;

    if(username==hardCodedUserName && password==hardcodedPassword){
      print("Successful Login");
    }else{
      print("Login Failed");
    }
    }
}