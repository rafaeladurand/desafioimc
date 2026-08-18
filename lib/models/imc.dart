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
}