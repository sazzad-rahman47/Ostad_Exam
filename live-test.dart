void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String, double> averages = {};

  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double avg = scores.reduce((a, b) => a + b) / scores.length;
    averages[name] = double.parse(avg.toStringAsFixed(2));
  }

  var sortedEntries = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  String result = '{\n';

  for (var entry in sortedEntries) {
    result += '  "${entry.key}": ${entry.value},\n';
  }

  result = result.trimRight().replaceFirst(RegExp(r',$'), '') + '\n}';

  print(result);
}
