// ignore_for_file: unnecessary_getters_setters

class IMC {
  double _peso = 0;
  double _altura = 0;

  IMC(this._peso, this._altura);

  double get peso => _peso; 

  double get altura => _altura;

  set peso(double peso){
    _peso = peso;
  }

  set altura(double altura){
    _altura = altura; 
  }

  double calcular(){
    return peso / (altura * altura); 
  }

  String classificar(){
    double imc = calcular();

    switch(imc){
      case < 16: 
        return "Magreza grave"; 

      case >= 16 && < 17:
        return "Magreza moderada"; 

      case >= 17 && < 18.5:
        return "Magreza leve"; 
      
      case >= 18.5 && < 25:
        return "Saudável"; 

      case >= 25 && < 30: 
        return "Sobrepeso "; 

      case >= 30 && < 35:
        return "Obesidade Grau I"; 
      
      case >= 35 && < 40:
        return "Obesidade Grau II";

      default:
        return "Obesidade Grau III";
    }
  }
}