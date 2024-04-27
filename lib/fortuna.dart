import 'dart:math';
import 'package:storm_4_dart/storm.dart' as storm;

class TruffleShuffle<T> {
  final List<T> buffer;
  final int size;
  int index;

  TruffleShuffle(Iterable<T> collection)
      : buffer = collection.toList(),
        size = sqrt(collection.length).toInt(),
        index = storm.randomBelow(collection.length);

  T call() {
    index = (index + 1 + storm.frontPoisson(size)) % buffer.length;
    return buffer[index];
  }
}

class QuantumMonty<T> {
  final List<T> data;
  final int size;
  final TruffleShuffle<T> truffleShuffle;
  int index = 0;

  QuantumMonty(Iterable<T> collection)
      : data = collection.toList(),
        size = collection.length,
        truffleShuffle = TruffleShuffle<T>(collection);

  T call() {
    return quantumMonty();
  }

  T quantumMonty() {
    return data[storm.quantumMonty(size)];
  }

  T flatUniform() {
    return data[storm.randomIndex(size)];
  }

  T cycle() {
    if (index >= size) {
      index = 0;
    }
    return data[index++];
  }

  T frontLinear() {
    return data[storm.frontLinear(size)];
  }

  T middleLinear() {
    return data[storm.middleLinear(size)];
  }

  T backLinear() {
    return data[storm.backLinear(size)];
  }

  T quantumLinear() {
    return data[storm.quantumLinear(size)];
  }

  T frontGauss() {
    return data[storm.frontGauss(size)];
  }

  T middleGauss() {
    return data[storm.middleGauss(size)];
  }

  T backGauss() {
    return data[storm.backGauss(size)];
  }

  T quantumGauss() {
    return data[storm.quantumGauss(size)];
  }

  T frontPoisson() {
    return data[storm.frontPoisson(size)];
  }

  T middlePoisson() {
    return data[storm.middlePoisson(size)];
  }

  T backPoisson() {
    return data[storm.backPoisson(size)];
  }

  T quantumPoisson() {
    return data[storm.quantumPoisson(size)];
  }
}
