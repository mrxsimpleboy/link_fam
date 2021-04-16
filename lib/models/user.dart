class AppUser {
  final String uid;
  AppUser({this.uid});
}

class AppUserData {
  final String uid;
  final String name;
  final String mobile;
  final String idCardNumber;
  final String email;
  final String userAddress;
  AppUserData(
      {this.uid,
      this.name,
      this.mobile,
      this.idCardNumber,
      this.email,
      this.userAddress});
}
