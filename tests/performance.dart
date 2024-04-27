import 'dart:core';
import 'dart:math';
import 'package:storm_4_dart/fortuna.dart' as fortuna;
import 'package:storm_4_dart/storm.dart' as storm;
import 'package:storm_4_dart/scope.dart' as scope;

void main() {
  var rng = Random();
  print("Storm4Dart ${storm.version()}");
  print("Storm CPP Engine: ${storm.stormVersion()}");

  print("\nFortuna Classes:");
  final someList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("someList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]");

  final truffleShuffle = fortuna.TruffleShuffle<int>(someList);
  print("truffleShuffle = fortuna.TruffleShuffle<int>(someList)");
  print("truffleShuffle(): ${scope.timer(truffleShuffle.call)} ns");

  final quantumMonty = fortuna.QuantumMonty<int>(someList);
  print("quantumMonty = fortuna.QuantumMonty<int>(someList)");
  print("quantumMonty(): ${scope.timer(quantumMonty.call)} ns");
  print("quantumMonty.truffleShuffle(): ${scope.timer(quantumMonty.truffleShuffle.call)} ns");
  print("quantumMonty.flatUniform(): ${scope.timer(quantumMonty.flatUniform)} ns");
  print("quantumMonty.cycle(): ${scope.timer(quantumMonty.cycle)} ns");
  print("quantumMonty.frontLinear(): ${scope.timer(quantumMonty.frontLinear)} ns");
  print("quantumMonty.middleLinear(): ${scope.timer(quantumMonty.middleLinear)} ns");
  print("quantumMonty.backLinear(): ${scope.timer(quantumMonty.backLinear)} ns");
  print("quantumMonty.quantumLinear(): ${scope.timer(quantumMonty.quantumLinear)} ns");
  print("quantumMonty.frontGauss(): ${scope.timer(quantumMonty.frontGauss)} ns");
  print("quantumMonty.middleGauss(): ${scope.timer(quantumMonty.middleGauss)} ns");
  print("quantumMonty.backGauss(): ${scope.timer(quantumMonty.backGauss)} ns");
  print("quantumMonty.quantumGauss(): ${scope.timer(quantumMonty.quantumGauss)} ns");
  print("quantumMonty.frontPoisson(): ${scope.timer(quantumMonty.frontPoisson)} ns");
  print("quantumMonty.middlePoisson(): ${scope.timer(quantumMonty.middlePoisson)} ns");
  print("quantumMonty.backPoisson(): ${scope.timer(quantumMonty.backPoisson)} ns");
  print("quantumMonty.quantumPoisson(): ${scope.timer(quantumMonty.quantumPoisson)} ns");

  print("\nUtility Functions:");
  print("storm.minInt(): ${scope.timer(() => storm.minInt())} ns");
  print("storm.maxInt(): ${scope.timer(() => storm.maxInt())} ns");
  print("storm.minFloat(): ${scope.timer(() => storm.minFloat())} ns");
  print("storm.maxFloat(): ${scope.timer(() => storm.maxFloat())} ns");
  print("storm.minBelow(): ${scope.timer(() => storm.minBelow())} ns");
  print("storm.minAbove(): ${scope.timer(() => storm.minAbove())} ns");

  print("\nFloat Base Case:");
  print("Random.nextDouble(): ${scope.timer(rng.nextDouble)} ns");

  print("\nStorm Float Functions:");
  print("storm.canonical(): ${scope.timer(() => storm.canonical())} ns");
  print("storm.uniform(0.0, 1.0): ${scope.timer(() => storm.uniform(0.0, 1.0))} ns");
  print("storm.exponential(1.0): ${scope.timer(() => storm.exponential(1.0))} ns");
  print("storm.gamma(2.0, 2.0): ${scope.timer(() => storm.gamma(2.0, 2.0))} ns");
  print("storm.weibull(1.0, 2.0): ${scope.timer(() => storm.weibull(1.0, 2.0))} ns");
  print("storm.normal(0.0, 1.0): ${scope.timer(() => storm.normal(0.0, 1.0))} ns");
  print("storm.logNormal(0.0, 1.0): ${scope.timer(() => storm.logNormal(0.0, 1.0))} ns");
  print("storm.extremeValue(0.0, 1.0): ${scope.timer(() => storm.extremeValue(0.0, 1.0))} ns");
  print("storm.chiSquared(2): ${scope.timer(() => storm.chiSquared(2))} ns");
  print("storm.cauchy(0.0, 1.0): ${scope.timer(() => storm.cauchy(0.0, 1.0))} ns");
  print("storm.fisherF(2, 2): ${scope.timer(() => storm.fisherF(2, 2))} ns");
  print("storm.studentT(5): ${scope.timer(() => storm.studentT(5))} ns");
  print("storm.beta(0.5, 0.5): ${scope.timer(() => storm.beta(0.5, 0.5))} ns");
  print("storm.pareto(2.0): ${scope.timer(() => storm.pareto(2.0))} ns");
  print("storm.vonmises(0.0, 1.0): ${scope.timer(() => storm.vonmises(0.0, 1.0))} ns");
  print("storm.triangular(0.0, 1.0, 0.5): ${scope.timer(() => storm.triangular(0.0, 1.0, 0.5))} ns");

  print("\nStorm Boolean Functions:");
  print("storm.bernoulli(0.75): ${scope.timer(() => storm.bernoulli(0.75))} ns");
  print("storm.percentTrue(25.0): ${scope.timer(() => storm.percentTrue(25.0))} ns");

  print("\nInteger Base Case:");
  print("Random.nextInt(10): ${scope.timer(() => rng.nextInt(10))} ns");

  print("\nStorm Integer Functions:");
  print("storm.uniformInt(-50, 50): ${scope.timer(() => storm.uniformInt(-50, 50))} ns");
  print("storm.binomial(10, 0.5): ${scope.timer(() => storm.binomial(10, 0.5))} ns");
  print("storm.negativeBinomial(5, 0.3): ${scope.timer(() => storm.negativeBinomial(5, 0.3))} ns");
  print("storm.geometric(0.5): ${scope.timer(() => storm.geometric(0.5))} ns");
  print("storm.poisson(4): ${scope.timer(() => storm.poisson(4))} ns");
  print("storm.randomBelow(100): ${scope.timer(() => storm.randomBelow(100))} ns");
  print("storm.randomRange(1, 100, 5): ${scope.timer(() => storm.randomRange(1, 100, 5))} ns");
  print("storm.plusOrMinus(10): ${scope.timer(() => storm.plusOrMinus(10))} ns");
  print("storm.plusOrMinusLinear(20): ${scope.timer(() => storm.plusOrMinusLinear(20))} ns");
  print("storm.plusOrMinusGauss(30): ${scope.timer(() => storm.plusOrMinusGauss(30))} ns");

  print("\nStorm Dice Functions:");
  print("storm.d(20): ${scope.timer(() => storm.d(20))} ns");
  print("storm.dice(3, 6): ${scope.timer(() => storm.dice(3, 6))} ns");
  print("storm.abilityDice(4): ${scope.timer(() => storm.abilityDice(4))} ns");

  print("\nStorm Index Functions:");
  print("Storm.randomIndex(10): ${scope.timer(() => storm.randomIndex(10))} ns");
  print("Storm.frontLinear(10): ${scope.timer(() => storm.frontLinear(10))} ns");
  print("Storm.backLinear(10): ${scope.timer(() => storm.backLinear(10))} ns");
  print("Storm.middleLinear(10): ${scope.timer(() => storm.middleLinear(10))} ns");
  print("Storm.quantumLinear(10): ${scope.timer(() => storm.quantumLinear(10))} ns");
  print("Storm.frontGauss(10): ${scope.timer(() => storm.frontGauss(10))} ns");
  print("Storm.middleGauss(10): ${scope.timer(() => storm.middleGauss(10))} ns");
  print("Storm.backGauss(10): ${scope.timer(() => storm.backGauss(10))} ns");
  print("Storm.quantumGauss(10): ${scope.timer(() => storm.quantumGauss(10))} ns");
  print("Storm.frontPoisson(10): ${scope.timer(() => storm.frontPoisson(10))} ns");
  print("Storm.backPoisson(10): ${scope.timer(() => storm.backPoisson(10))} ns");
  print("Storm.middlePoisson(10): ${scope.timer(() => storm.middlePoisson(10))} ns");
  print("Storm.quantumPoisson(10): ${scope.timer(() => storm.quantumPoisson(10))} ns");
  print("Storm.quantumMonty(10): ${scope.timer(() => storm.quantumMonty(10))} ns");
}
