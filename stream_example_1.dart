import 'dart:async';

void main() {
  // create stream
  // access to stream
  // subscribe

  StreamController<int> controller = StreamController<int>();
  Stream stream = controller.stream;
  stream.listen((event) {
    print("Value number: $event");
  });
  controller.add(78);
  controller.add(90);
  controller.add(66);

  controller.close();
}
