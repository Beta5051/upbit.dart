String EnumToString(Enum enumObject) => enumObject.toString().split('.')[1];

T? StringToEnum<T extends Enum>(List<T> values, String s) {
  for (var i = 0; i < values.length; i++) {
    if (EnumToString(values[i]) == s) {
      return values[i];
    }
  }
}

String ListToString(List<dynamic> list) {
  String result = '';
  for (var i = 0; i < list.length; i++) {
    result += list[i].toString();
    if (i != list.length - 1) {
      result += ',';
    }
  }
  return result;
}