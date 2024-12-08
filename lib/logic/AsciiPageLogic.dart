List<Map<String, String>> generateFilteredAsciiTable() {
  List<Map<String, String>> asciiTable = [];
  int n = -1;
  while (++n <= 255) {
    if (n % 23 == 0 && n != 0) {
      asciiTable.add({
        'decimal': n.toString(),
        'character': String.fromCharCode(n),
      });
    }
  }
  return asciiTable;
}
