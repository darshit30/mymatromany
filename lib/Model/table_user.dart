class TblUserModel{
  late int _UserID;
  late int _CityID;
  late String _UserName;
  late int _Gender;
  late String _DOB;
  late String _Hobbies;

  String get Hobbies => _Hobbies;
  int get UserID => _UserID;
  int get CityID => _CityID;
  String get UserName => _UserName;
  int get Gender => _Gender;
  String get DOB => _DOB;

  TblUserModel.fromMap(Map<String, Object?> map) {
    _UserID = map['UserID'] != null ? map['UserID'] as int : 0;
    _CityID = map['CityID'] != null ? map['CityID'] as int : 0;
    _UserName = map['UserName'] != null ? map['UserName'] as String : '';
    _Gender = map['Gender'] != null ? map['Gender'] as int : 0;
    _DOB = map['DOB'] != null ? map['DOB'] as String : '';
    _Hobbies = map['Hobbies'] != null ? map['Hobbies'] as String : '';
  }





}
