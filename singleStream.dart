import 'dart:async';
import 'dart:math';

void main() {
  // 1.create single subscribtion stream
  // 2. access to stream
  // 3. subscribe
  // 4. add data
  // 5. close the stream
  var stream = Stream.fromIterable([1, 2, 4]);
  stream.listen((event) {
    print("$event");
  });

  /// second exaple
  List<String> studenNames = ["Ali", "Jawid", "Samim", "Hamid"];
  var stream2 = Stream.fromIterable(studenNames);
  stream2.listen((event) {
    print("$event");
  });
}
