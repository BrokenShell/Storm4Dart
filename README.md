# Storm4Dart
## High Performance Random Engine Utility
- Dart wrapper for C++ library "Storm"
- Storm Documentation: https://github.com/BrokenShell/Storm

```
$ dart bin/performance.dart

Fortuna Classes:
truffleShuffle = fortuna.TruffleShuffle<int>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
truffleShuffle(): 158 ns
quantumMonty = fortuna.QuantumMonty<int>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
quantumMonty(): 330 ns
quantumMonty.truffleShuffle(): 144 ns
quantumMonty.flatUniform(): 120 ns
quantumMonty.cycle(): 15 ns
quantumMonty.frontLinear(): 59 ns
quantumMonty.middleLinear(): 64 ns
quantumMonty.backLinear(): 58 ns
quantumMonty.quantumLinear(): 150 ns
quantumMonty.frontGauss(): 110 ns
quantumMonty.middleGauss(): 183 ns
quantumMonty.backGauss(): 113 ns
quantumMonty.quantumGauss(): 231 ns
quantumMonty.frontPoisson(): 207 ns
quantumMonty.middlePoisson(): 269 ns
quantumMonty.backPoisson(): 210 ns
quantumMonty.quantumPoisson(): 319 ns

Utility Functions:
storm.minInt(): 22 ns
storm.maxInt(): 21 ns
storm.minFloat(): 21 ns
storm.maxFloat(): 28 ns
storm.minBelow(): 22 ns
storm.minAbove(): 21 ns

Float Base Case:
Random.nextDouble(): 47 ns

Storm Float Functions:
storm.canonical(): 50 ns
storm.uniform(0.0, 1.0): 60 ns
storm.exponential(1.0): 63 ns
storm.gamma(2.0, 2.0): 218 ns
storm.weibull(1.0, 2.0): 120 ns
storm.normal(0.0, 1.0): 162 ns
storm.logNormal(0.0, 1.0): 189 ns
storm.extremeValue(0.0, 1.0): 102 ns
storm.chiSquared(2): 118 ns
storm.cauchy(0.0, 1.0): 98 ns
storm.fisherF(2, 2): 226 ns
storm.studentT(5): 378 ns
storm.beta(0.5, 0.5): 343 ns
storm.pareto(2.0): 72 ns
storm.vonmises(0.0, 1.0): 192 ns
storm.triangular(0.0, 1.0, 0.5): 60 ns

Storm Boolean Functions:
storm.bernoulli(0.75): 82 ns
storm.percentTrue(25.0): 62 ns

Integer Base Case:
Random.nextInt(10): 27 ns

Storm Integer Functions:
storm.uniformInt(-50, 50): 98 ns
storm.binomial(10, 0.5): 177 ns
storm.negativeBinomial(5, 0.3): 877 ns
storm.geometric(0.5): 200 ns
storm.poisson(4): 236 ns
storm.randomBelow(100): 99 ns
storm.randomRange(1, 100, 5): 124 ns
storm.plusOrMinus(10): 104 ns
storm.plusOrMinusLinear(20): 185 ns
storm.plusOrMinusGauss(30): 168 ns

Storm Dice Functions:
storm.d(20): 96 ns
storm.dice(3, 6): 249 ns
storm.abilityDice(4): 889 ns

Storm Index Functions:
Storm.randomIndex(10): 113 ns
Storm.frontLinear(10): 57 ns
Storm.backLinear(10): 57 ns
Storm.middleLinear(10): 63 ns
Storm.quantumLinear(10): 148 ns
Storm.frontGauss(10): 107 ns
Storm.middleGauss(10): 173 ns
Storm.backGauss(10): 106 ns
Storm.quantumGauss(10): 221 ns
Storm.frontPoisson(10): 197 ns
Storm.backPoisson(10): 199 ns
Storm.middlePoisson(10): 252 ns
Storm.quantumPoisson(10): 302 ns
Storm.quantumMonty(10): 318 ns
```
