class TBLCountry {
  late int _CountryID;
  late String _CountryName;

  String get CountryName => _CountryName;

  int get CountryID => _CountryID;

  TBLCountry.fromMap(Map<String, Object?> map) {
    _CountryID = map['CountryID'] != null ? map['CountryID'] as int : 0;
    _CountryName =
    map['CountryName'] != null ? map['CountryName'] as String : '';
  }
}
