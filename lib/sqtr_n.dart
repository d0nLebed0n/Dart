extension SqrtN on num {
  num sqrtN(n) {
    num xk = 2;
    num xk1 = 4;
    int step = 0;
    if (n<=0) throw Exception('Error n < 0 !!!');
    if (n == 1) throw Exception('Error n = 0');
    if (n >= 33) throw Exception('Error n >=33');


    while ((xk - xk1) * (xk - xk1) > 0.000001) {
      xk = xk1;
      xk1 = ((n - 1) * xk + this / xkMinus1(xk, n)) / n;
    }
    return (xk * 100000).toInt() / 100000;
  }

  num xkMinus1(num xk, num n) {
    num x = xk;
    while (n != 2) {
      x *= xk;
      n -= 1;
    }

    return x;
  }
}