class FactorizationPageLogic {

    List<String>  facorizar(int n){
      List<String> solucion=[];
      int factor=2,potencia=0;
        while(n>1){
          while(n%factor == 0){
            potencia++;
            n= n~/factor ;
          }
          if(potencia >0){
            solucion.add("Factor $factor elevado a la potecnias $potencia");
            potencia=0;
          }
          factor ++;
        }
      return solucion;
    }

}