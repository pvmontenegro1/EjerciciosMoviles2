class NumerosPrimosLogic {
  List<String> numPrimos() {
    List<String> numerosPrimos = [];
    for (int numero = 2; numero <= 3276; numero++) {
      bool esPrimo = true;
      for (int x = 2; x <= numero ~/ 2; x++) {
        if (numero % x == 0) {
          esPrimo = false;
          break;
        }
      }
      if (esPrimo) {
        numerosPrimos.add("$numero");
      }
    }
    return numerosPrimos;
  }
}
