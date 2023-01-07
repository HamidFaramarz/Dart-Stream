// this example is with more details 



import 'dart:async';

void main() {
  // 1.create stream
  // 2. access to stream
  // 3. subscribe
  // 4. add data
  // 5. close the stream
  StreamController<String> streamController1 = StreamController<String>();
  Stream stream = streamController1.stream;
  streamController1.stream.listen((event) {
    print("Value: $event");
  });

  streamController1.add("one");
  streamController1.add("two");
  streamController1.add("three");

  streamController1.sink.add("Final");

  streamController1.close();
}
