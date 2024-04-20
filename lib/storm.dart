import 'dart:io';
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as ffi;

final storm = ffi.DynamicLibrary.open("${Directory.current.path}/lib/storm.so");

typedef CppStrGen = ffi.Pointer<ffi.Utf8> Function();

typedef CppDoubleGenerator = ffi.Double Function();
typedef DoubleGenerator = double Function();
typedef CppDoubleTransformer = ffi.Double Function(ffi.Double);
typedef DoubleTransformer = double Function(double);
typedef CppDoubleTransducer = ffi.Double Function(ffi.Double, ffi.Double);
typedef DoubleTransducer = double Function(double, double);
typedef CppDoubleTriplex = ffi.Double Function(ffi.Double, ffi.Double, ffi.Double);
typedef DoubleTriplex = double Function(double, double, double);

typedef CppIntGenerator = ffi.Int64 Function();
typedef IntGenerator = int Function();
typedef CppIntTransformer = ffi.Int64 Function(ffi.Int64);
typedef IntTransformer = int Function(int);
typedef CppIntTransducer = ffi.Int64 Function(ffi.Int64, ffi.Int64);
typedef IntTransducer = int Function(int, int);
typedef CppIntTriplex = ffi.Int64 Function(ffi.Int64, ffi.Int64, ffi.Int64);
typedef IntTriplex = int Function(int, int, int);

typedef CppBoolGenerator = ffi.Bool Function(ffi.Double);
typedef BoolGenerator = bool Function(double);

typedef CppDoubleToInt = ffi.Int64 Function(ffi.Double);
typedef DoubleToInt = int Function(double);

typedef CppIntDoubleJunctionInt = ffi.Int64 Function(ffi.Int64, ffi.Double);
typedef IntDoubleJunctionInt = int Function(int, double);

// Utility Functions
String version() {
  final getVersion = storm.lookupFunction<CppStrGen, CppStrGen>("get_version");
  return getVersion().cast<ffi.Utf8>().toDartString();
}

final minInt = storm.lookupFunction<CppIntGenerator, IntGenerator>("min_int");
final maxInt = storm.lookupFunction<CppIntGenerator, IntGenerator>("max_int");
final minFloat = storm.lookupFunction<CppDoubleGenerator, DoubleGenerator>("min_float");
final maxFloat = storm.lookupFunction<CppDoubleGenerator, DoubleGenerator>("max_float");
final minBelow = storm.lookupFunction<CppDoubleGenerator, DoubleGenerator>("min_below");
final minAbove = storm.lookupFunction<CppDoubleGenerator, DoubleGenerator>("min_above");

// Random Floats
final canonical = storm.lookupFunction<CppDoubleGenerator, DoubleGenerator>("canonical_variate");
final uniform = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("uniform_real_variate");
final exponential = storm.lookupFunction<CppDoubleTransformer, DoubleTransformer>("exponential_variate");
final gamma = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("gamma_variate");
final weibull = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("weibull_variate");
final normal = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("normal_variate");
final logNormal = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("log_normal_variate");
final extremeValue = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("extreme_value_variate");
final chiSquared = storm.lookupFunction<CppDoubleTransformer, DoubleTransformer>("chi_squared_variate");
final cauchy = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("cauchy_variate");
final fisherF = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("fisher_f_variate");
final studentT = storm.lookupFunction<CppDoubleTransformer, DoubleTransformer>("student_t_variate");
final beta = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("beta_variate");
final pareto = storm.lookupFunction<CppDoubleTransformer, DoubleTransformer>("pareto_variate");
final vonmises = storm.lookupFunction<CppDoubleTransducer, DoubleTransducer>("vonmises_variate");
final triangular = storm.lookupFunction<CppDoubleTriplex, DoubleTriplex>("triangular_variate");

// Random Boolean
final bernoulli = storm.lookupFunction<CppBoolGenerator, BoolGenerator>("bernoulli_variate");
final percentTrue = storm.lookupFunction<CppBoolGenerator, BoolGenerator>("percent_true");

// Random Integers
final uniformInt = storm.lookupFunction<CppIntTransducer, IntTransducer>("uniform_int_variate");
final binomial = storm.lookupFunction<CppIntDoubleJunctionInt, IntDoubleJunctionInt>("binomial_variate");
final negativeBinomial = storm.lookupFunction<CppIntDoubleJunctionInt, IntDoubleJunctionInt>("negative_binomial_variate");
final geometric = storm.lookupFunction<CppDoubleToInt, DoubleToInt>("geometric_variate");
final poisson = storm.lookupFunction<CppDoubleToInt, DoubleToInt>("poisson_variate");
final randomBelow = storm.lookupFunction<CppIntTransformer, IntTransformer>("random_below");
final randomRange = storm.lookupFunction<CppIntTriplex, IntTriplex>("random_range");
final plusOrMinus = storm.lookupFunction<CppIntTransformer, IntTransformer>("plus_or_minus");
final plusOrMinusLinear = storm.lookupFunction<CppIntTransformer, IntTransformer>("plus_or_minus_linear");
final plusOrMinusGauss = storm.lookupFunction<CppIntTransformer, IntTransformer>("plus_or_minus_gauss");

// Random Dice
final d = storm.lookupFunction<CppIntTransformer, IntTransformer>("d");
final dice = storm.lookupFunction<CppIntTransducer, IntTransducer>("dice");
final abilityDice = storm.lookupFunction<CppIntTransformer, IntTransformer>("ability_dice");

// Random Index
final randomIndex = storm.lookupFunction<CppIntTransformer, IntTransformer>("random_index");
final frontLinear = storm.lookupFunction<CppIntTransformer, IntTransformer>("front_linear");
final backLinear = storm.lookupFunction<CppIntTransformer, IntTransformer>("back_linear");
final middleLinear = storm.lookupFunction<CppIntTransformer, IntTransformer>("middle_linear");
final quantumLinear = storm.lookupFunction<CppIntTransformer, IntTransformer>("quantum_linear");
final frontGauss = storm.lookupFunction<CppIntTransformer, IntTransformer>("front_gauss");
final middleGauss = storm.lookupFunction<CppIntTransformer, IntTransformer>("middle_gauss");
final backGauss = storm.lookupFunction<CppIntTransformer, IntTransformer>("back_gauss");
final quantumGauss = storm.lookupFunction<CppIntTransformer, IntTransformer>("quantum_gauss");
final frontPoisson = storm.lookupFunction<CppIntTransformer, IntTransformer>("front_poisson");
final backPoisson = storm.lookupFunction<CppIntTransformer, IntTransformer>("back_poisson");
final middlePoisson = storm.lookupFunction<CppIntTransformer, IntTransformer>("middle_poisson");
final quantumPoisson = storm.lookupFunction<CppIntTransformer, IntTransformer>("quantum_poisson");
final quantumMonty = storm.lookupFunction<CppIntTransformer, IntTransformer>("quantum_monty");
