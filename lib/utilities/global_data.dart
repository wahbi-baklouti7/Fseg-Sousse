/*

  to keep tracking all the screen user enter it. 
 */
class GlobalData {
  static String? _degree;
  static String? _degreeLevel;
  static String? _section;
  static String? _subject;

  String? get degree => _degree;
  String? get degreeLevel => _degreeLevel;
  String? get section => _section;
  String? get subject => _subject;

  static void setDegreeLevel(String? degreeLevel) {
    _degreeLevel = degreeLevel;
    print("degree level: $_degreeLevel");
  }

  static void setDegree(String? degree) {
    _degree = degree;
    print("degree: $_degree");
  }

  static void setSection(String? section) {
    _section = section;
    print("section: $_section");
  }

  static void setSubject(String? subject) {
    _subject = subject;
    print("subject: $_subject");
  }
}
