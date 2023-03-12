import 'dart:collection';
import 'dart:core';
import 'exponent_and_coefficient.dart';

class IterativeAlgorithm {
  late List<ExponentAndCoefficient> p;
  late List<ExponentAndCoefficient> q;

  IterativeAlgorithm(String p, String q) {
    this.p = Conv(p);
    this.q = Conv(q);
  }

  List<ExponentAndCoefficient> Conv(String poly) {
    List<ExponentAndCoefficient> arrayList = [];
    const pattern = r'\+?(?<coef>-?\d*)(?<var>x?\^?)(?<exp>\d*)';

    final regExp = RegExp(
      pattern,
      multiLine: true,
    );

    const multilineText = '10+1x^5+1x^2';
    Iterable<RegExpMatch> matches = regExp.allMatches(multilineText);
    for (final m in matches) {
      String? coef = m.namedGroup('coef');
      String? exp = m.namedGroup('exp');

      if (!(coef == "")) {
        int coefficient = int.parse(coef!);
        int exponent = 0;

        if (null != exp && !(exp == "")) {
          exponent = int.parse(exp);

        }
        ExponentAndCoefficient exponentAndCoefficient = ExponentAndCoefficient(coefficient: coefficient , exponent: exponent);
        arrayList.add(exponentAndCoefficient);
      }
    }

    return arrayList;
  }
// Iterative Algorithm for multiply tow polynomials
  List<int> multiply(List<int> A, List<int> B, int m, int n) {
    List<int> prod = List<int>.filled(m + n - 1, 0);

    for (int i = 0; i < m + n - 1; i++) {
      prod[i] = 0;
    }
    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        prod[i + j] += A[i] * B[j];
      }
    }

    return prod;
  }

//this fun for print the polynomials
  String printPoly(List<int> poly, int n) {
    String st = "";
    for (int i = 0; i < n; i++) {
      st = "$st + ${poly[i]}";

      if (i != 0) {
        st = "${st}x^$i";
      }
      if (i != n - 1) {
        st = "$st + ";
      }
    }
    return st;
  }

//this fun for convert this : 1 + x^1 + 2x^2 to this  [1,1,2]
  List<int> convArrayListToArray(
      List<ExponentAndCoefficient> exponentAndCoefficients) {
    List<ExponentAndCoefficient> arrayList = [];
    exponentAndCoefficients.sort((a, b) => a.exponent.compareTo(b.exponent));
    for (int i = 0; i < exponentAndCoefficients.length; i++) {
      int res = 0;
      int coefficient = exponentAndCoefficients[i].exponent;
      for (int j = 0; j < exponentAndCoefficients.length; j++) {
        if (exponentAndCoefficients[i].exponent ==
            exponentAndCoefficients[i].exponent) {
          res = res + exponentAndCoefficients[j].coefficient;
        }
      }
    ExponentAndCoefficient exponentAndCoefficient=  ExponentAndCoefficient(exponent: res , coefficient:  coefficient);
      arrayList.add(exponentAndCoefficient);
    }
    int max = 0;
    for (ExponentAndCoefficient exponentAndCoefficient in arrayList) {
      if (exponentAndCoefficient.exponent > max) {
        max = exponentAndCoefficient.exponent;
      }
    }
    List<int> a = List<int>.filled(max + 1, 0);
    for (int i = 0; i < max + 1; i++) {
      a[i] = 0;
    }

    for (int i = 0; i < arrayList.length; i++) {
      a[arrayList[i].exponent] = arrayList[i].coefficient;
    }
    return a;
  }

  HashMap<String, String> multiplyInfo() {
    HashMap<String, String> info = HashMap();
    List<int> a1 = convArrayListToArray(p);
    List<int> a2 = convArrayListToArray(q);
    int m = a1.length;
    int n = a2.length;
    int t1 = DateTime.now().millisecondsSinceEpoch;
    List<int> prod = multiply(a1, a2, m, n);
    int t2 = DateTime.now().millisecondsSinceEpoch;
    String st = printPoly(prod, m + n - 1);
    String st2 = printPoly(a1, m);
    String st3 = printPoly(a2, n);

    info["1"] = st;
    info["2"] = st2;
    info["3"] = st3;
    info["4"] = "O(n^2)";
    info["5"] = "$n * $m + ";
    info["6"] = "$t2 - $t1 + ";

    return info;
  }

  @override
  String toString() {
    return 'IterativeAlgorithm{p: $p, q: $q}';
  }
}
