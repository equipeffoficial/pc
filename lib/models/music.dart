


class Music{
  Music.formMap(Map<String, dynamic> map ) {
    title = map['title'] as String;
  }


  String title;

  @override
  String toString() {
    return 'Music{title: $title}';
  }
}