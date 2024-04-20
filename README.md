# Storm4Dart
## High Performance Random Engine Utility
- Dart wrapper for C++ library "Storm"
- Storm Documentation: https://github.com/BrokenShell/Storm

```
$ dart bin/storm.dart

Storm4Dart
Core Engine: v3.9.5

Utility Functions:
Min Int: -9223372036854775807
Max Int: 9223372036854775807
Min Float: -1.7976931348623157e+308
Max Float: 1.7976931348623157e+308
Min Below: -5e-324
Min Above: 5e-324

Random Float Functions:
Canonical: 0.6341166069794201
Uniform (0, 1): 0.673590288523059
Exponential (Rate=1.0): 0.8784872567541526
Gamma (Shape=2.0, Scale=2.0): 2.8733271076729947
Weibull (Shape=1.0, Scale=2.0): 1.9214509442052183
Normal (Mean=0.0, Std Dev=1.0): 0.4290532044640238
Log-Normal (Mean=0.0, Std Dev=1.0): 0.8441173364582204
Extreme Value (Location=0.0, Scale=1.0): 2.112545692041287
Chi-Squared (Degrees of Freedom=2): 0.7532759782115703
Cauchy (Location=0.0, Scale=1.0): -1.3005171490966803
Fisher F (DF1=2, DF2=2): 1.0957559956385003
Student T (Degrees of Freedom=5): -0.21223857287030787
Beta (Alpha=0.5, Beta=0.5): 0.9859322347103257
Pareto (Alpha=2.0): 1.5341564889085906
Von Mises (Mu=0.0, Kappa=1.0): 4.8171977261945145
Triangular (Low=0.0, High=1.0, Mode=0.5): 0.4243599300071552

Random Boolean Functions:
Bernoulli (P=0.75): true
Percent True (25.0): true

Random Integer Functions:
Uniform Int Variate (-50, 50): -32
Binomial Variate (10 trials, p=0.5): 10
Negative Binomial Variate (5 trials, p=0.3): 9
Geometric Variate (p=0.5): 1
Poisson Variate (mean=4): 5
Random Below (100): 83
Random Range (1, 100, 5): 76
Plus or Minus (10): 0
Plus or Minus Linear (20): 7
Plus or Minus Gauss (30): -19

Random Dice Functions:
Roll a D20: 6
Roll three six-sided dice: 7
Roll 4d6, take top three: 18

Random Index Functions:
Random Index (10): 2
Front Linear (10): 1
Back Linear (10): 3
Middle Linear (10): 8
Quantum Linear (10): 0
Front Gauss (10): 0
Middle Gauss (10): 5
Back Gauss (10): 9
Quantum Gauss (10): 1
Front Poisson (10): 4
Back Poisson (10): 5
Middle Poisson (10): 7
Quantum Poisson (10): 5
Quantum Monty (10): 3
```
