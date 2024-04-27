int timer(Function testFunction, {int cycles = 100000}) {
  warmUp(testFunction, 100);
  var sw = Stopwatch()..start();
  for (var i = 0; i < cycles; i++) {
    testFunction();
  }
  sw.stop();
  return (sw.elapsedMicroseconds * 1000) ~/ cycles;
}

void warmUp(Function func, int count) {
  for (int i = 0; i < count; i++) {
    func();
  }
}
