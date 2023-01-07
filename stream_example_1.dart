import 'dart:async';

void main() {
  
  // for creating stream need to pass these steps: 
  
  // create stream
  // access to stream
  // subscribe
  // add data

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
