class ExponentAndCoefficient {
  late int exponent;
  late int coefficient;

  ExponentAndCoefficient(this.exponent, this.coefficient);

  ExponentAndCoefficient.setExponent(this.exponent);

  ExponentAndCoefficient.setCoefficient(this.coefficient);



  @override
  String toString() {
    return 'ExponentAndCoefficient{exponent: $exponent, coefficient: $coefficient}';
  }
}
