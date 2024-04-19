import 'dart:io';
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as ffi;

final storm = ffi.DynamicLibrary.open("${Directory.current.path}/lib/storm.so");

// Storm Version
String version() {
  final getVersion = storm.lookupFunction<
      ffi.Pointer<ffi.Utf8> Function(),
      ffi.Pointer<ffi.Utf8> Function()>("get_version");
  return getVersion().cast<ffi.Utf8>().toDartString();
}

// Utility Functions
final minInt = storm.lookupFunction<
    ffi.Int64 Function(),
    int Function()>("min_int");

final maxInt = storm.lookupFunction<
    ffi.Int64 Function(),
    int Function()>("max_int");

final minFloat = storm.lookupFunction<
    ffi.Double Function(),
    double Function()>("min_float");

final maxFloat = storm.lookupFunction<
    ffi.Double Function(),
    double Function()>("max_float");

final minBelow = storm.lookupFunction<
    ffi.Double Function(),
    double Function()>("min_below");

final minAbove = storm.lookupFunction<
    ffi.Double Function(),
    double Function()>("min_above");

// Random Floats
final canonical = storm.lookupFunction<
    ffi.Double Function(),
    double Function()>("canonical_variate");

final uniform = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("uniform_real_variate");

final exponential = storm.lookupFunction<
    ffi.Double Function(ffi.Double),
    double Function(double)>("exponential_variate");

final gamma = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("gamma_variate");

final weibull = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("weibull_variate");

final normal = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("normal_variate");

final logNormal = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("log_normal_variate");

final extremeValue = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("extreme_value_variate");

final chiSquared = storm.lookupFunction<
    ffi.Double Function(ffi.Double),
    double Function(double)>("chi_squared_variate");

final cauchy = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("cauchy_variate");

final fisherF = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("fisher_f_variate");

final studentT = storm.lookupFunction<
    ffi.Double Function(ffi.Double),
    double Function(double)>("student_t_variate");

final beta = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("beta_variate");

final pareto = storm.lookupFunction<
    ffi.Double Function(ffi.Double),
    double Function(double)>("pareto_variate");

final vonmises = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double),
    double Function(double, double)>("vonmises_variate");

final triangular = storm.lookupFunction<
    ffi.Double Function(ffi.Double, ffi.Double, ffi.Double),
    double Function(double, double, double)>("triangular_variate");

// Random Boolean
final bernoulli = storm.lookupFunction<
    ffi.Bool Function(ffi.Double),
    bool Function(double)>("bernoulli_variate");

final percentTrue = storm.lookupFunction<
    ffi.Bool Function(ffi.Double),
    bool Function(double)>("percent_true");

// Random Integers
final uniformInt = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64, ffi.Int64),
    int Function(int, int)>("uniform_int_variate");

final binomial = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64, ffi.Double),
    int Function(int, double)>("binomial_variate");

final negativeBinomial = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64, ffi.Double),
    int Function(int, double)>("negative_binomial_variate");

final geometric = storm.lookupFunction<
    ffi.Int64 Function(ffi.Double),
    int Function(double)>("geometric_variate");

final poisson = storm.lookupFunction<
    ffi.Int64 Function(ffi.Double),
    int Function(double)>("poisson_variate");

final randomBelow = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("random_below");

final randomRange = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64, ffi.Int64, ffi.Int64),
    int Function(int, int, int)>("random_range");

final plusOrMinus = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("plus_or_minus");

final plusOrMinusLinear = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("plus_or_minus_linear");

final plusOrMinusGauss = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("plus_or_minus_gauss");

// Random Dice
final d = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("d");

final dice = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64, ffi.Int64),
    int Function(int, int)>("dice");

final abilityDice = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("ability_dice");

// Random Index
final randomIndex = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("random_index");

final frontLinear = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("front_linear");

final backLinear = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("back_linear");

final middleLinear = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("middle_linear");

final quantumLinear = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("quantum_linear");

final frontGauss = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("front_gauss");

final middleGauss = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("middle_gauss");

final backGauss = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("back_gauss");

final quantumGauss = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("quantum_gauss");

final frontPoisson = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("front_poisson");

final backPoisson = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("back_poisson");

final middlePoisson = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("middle_poisson");

final quantumPoisson = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("quantum_poisson");

final quantumMonty = storm.lookupFunction<
    ffi.Int64 Function(ffi.Int64),
    int Function(int)>("quantum_monty");
