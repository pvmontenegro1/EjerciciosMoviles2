class AsciiPageLogic {
  // Método para generar la tabla de caracteres ASCII
  String generarTablaAscii() {
    StringBuffer asciiTable = StringBuffer();

    for (int n = 0; n <= 255; n++) {
      asciiTable.write('\n\t${n.toString().padLeft(3)} = \'${String.fromCharCode(n)}\'');
    }

    return asciiTable.toString();
  }
}