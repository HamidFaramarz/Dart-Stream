import 'dart:async';

void main() {
  // 1.create stream
  // 2. access to stream
  // 3. subscribe
  // 4. add data
  // 5. close the stream
  StreamController<bool> streamController2 = StreamController<bool>();
  Stream stream = streamController2.stream;
  streamController2.stream.listen((event) {
    print("Stream value: $event");
  });
  streamController2.add(true);
  streamController2.add(false);
  streamController2.sink.add(true);

  streamController2.close();

  // another type to create stream
  var streamcontro1 = StreamController<int>();
  Stream stream1 = streamcontro1.stream;
  streamcontro1.stream.listen((event) {
    print("$event");
  });
  //add data
  streamcontro1.add(4554);
}
