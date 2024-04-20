import 'package:storm/storm.dart' as storm;

void main(List<String> arguments) {
  print("Storm4Dart");
  print("Core Engine Version: ${storm.version()}");

  print("\nUtility Functions:");
  print("Min Int: ${storm.minInt()}");
  print("Max Int: ${storm.maxInt()}");
  print("Min Float: ${storm.minFloat()}");
  print("Max Float: ${storm.maxFloat()}");
  print("Min Below: ${storm.minBelow()}");
  print("Min Above: ${storm.minAbove()}");

  print("\nRandom Float Functions:");
  print("Canonical: ${storm.canonical()}");
  print("Uniform (0, 1): ${storm.uniform(0.0, 1.0)}");
  print("Exponential (Rate=1.0): ${storm.exponential(1.0)}");
  print("Gamma (Shape=2.0, Scale=2.0): ${storm.gamma(2.0, 2.0)}");
  print("Weibull (Shape=1.0, Scale=2.0): ${storm.weibull(1.0, 2.0)}");
  print("Normal (Mean=0.0, Std Dev=1.0): ${storm.normal(0.0, 1.0)}");
  print("Log-Normal (Mean=0.0, Std Dev=1.0): ${storm.logNormal(0.0, 1.0)}");
  print("Extreme Value (Location=0.0, Scale=1.0): ${storm.extremeValue(0.0, 1.0)}");
  print("Chi-Squared (Degrees of Freedom=2): ${storm.chiSquared(2)}");
  print("Cauchy (Location=0.0, Scale=1.0): ${storm.cauchy(0.0, 1.0)}");
  print("Fisher F (DF1=2, DF2=2): ${storm.fisherF(2, 2)}");
  print("Student T (Degrees of Freedom=5): ${storm.studentT(5)}");
  print("Beta (Alpha=0.5, Beta=0.5): ${storm.beta(0.5, 0.5)}");
  print("Pareto (Alpha=2.0): ${storm.pareto(2.0)}");
  print("Von Mises (Mu=0.0, Kappa=1.0): ${storm.vonmises(0.0, 1.0)}");
  print("Triangular (Low=0.0, High=1.0, Mode=0.5): ${storm.triangular(0.0, 1.0, 0.5)}");

  print("\nRandom Boolean Functions:");
  print("Bernoulli (P=0.75): ${storm.bernoulli(0.75)}");
  print("Percent True (25.0): ${storm.percentTrue(25.0)}");

  print("\nRandom Integer Functions:");
  print("Uniform Int Variate (-50, 50): ${storm.uniformInt(-50, 50)}");
  print("Binomial Variate (10 trials, p=0.5): ${storm.binomial(10, 0.5)}");
  print("Negative Binomial Variate (5 trials, p=0.3): ${storm.negativeBinomial(5, 0.3)}");
  print("Geometric Variate (p=0.5): ${storm.geometric(0.5)}");
  print("Poisson Variate (mean=4): ${storm.poisson(4)}");
  print("Random Below (100): ${storm.randomBelow(100)}");
  print("Random Range (1, 100, 5): ${storm.randomRange(1, 100, 5)}");
  print("Plus or Minus (10): ${storm.plusOrMinus(10)}");
  print("Plus or Minus Linear (20): ${storm.plusOrMinusLinear(20)}");
  print("Plus or Minus Gauss (30): ${storm.plusOrMinusGauss(30)}");

  print("\nRandom Dice Functions:");
  print("Roll a D20: ${storm.d(20)}");
  print("Roll three six-sided dice: ${storm.dice(3, 6)}");
  print("Roll 4d6, take top three: ${storm.abilityDice(4)}");

  print("\nRandom Index Functions:");
  print("Random Index (10): ${storm.randomIndex(10)}");
  print("Front Linear (10): ${storm.frontLinear(10)}");
  print("Back Linear (10): ${storm.backLinear(10)}");
  print("Middle Linear (10): ${storm.middleLinear(10)}");
  print("Quantum Linear (10): ${storm.quantumLinear(10)}");
  print("Front Gauss (10): ${storm.frontGauss(10)}");
  print("Middle Gauss (10): ${storm.middleGauss(10)}");
  print("Back Gauss (10): ${storm.backGauss(10)}");
  print("Quantum Gauss (10): ${storm.quantumGauss(10)}");
  print("Front Poisson (10): ${storm.frontPoisson(10)}");
  print("Back Poisson (10): ${storm.backPoisson(10)}");
  print("Middle Poisson (10): ${storm.middlePoisson(10)}");
  print("Quantum Poisson (10): ${storm.quantumPoisson(10)}");
  print("Quantum Monty (10): ${storm.quantumMonty(10)}");
}
