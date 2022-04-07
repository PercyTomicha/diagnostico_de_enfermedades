
import '../models/enfermedad_sintoma.dart';
import 'nodo.dart';

class Arbol{
  Nodo? raiz;

  Arbol(){
    raiz = null;
  }

  insertarLista(List<EnfermedadSintoma> lista){
    for (var elemento in lista) {
      insertar(elemento.idSintoma!, elemento.probabilidad!);
    }
  }

  insertar(int sintomasId, int porcentaje){
    raiz = _insertar(raiz, sintomasId, porcentaje);
  }

  Nodo _insertar(Nodo? p, int sintomaId, int porcentaje){
    if(p == null){
      return Nodo(sintomaId, porcentaje);
    }
    if(sintomaId < p.sintomaId) p.hijoI = _insertar(p.hijoI, sintomaId, porcentaje);
    else if(sintomaId > p.sintomaId) p.hijoD = _insertar(p.hijoD, sintomaId, porcentaje);
    return p;
  }

  inOrden(){
    _inOrden(raiz);
  }

  _inOrden(Nodo? p){
    if(p == null) return;
    _inOrden(p.hijoI);
    print('${p.sintomaId} -> ${p.porcentaje}');
    _inOrden(p.hijoD);
  }

  int siExisteSintomaObtenerPorcentaje(int sintomaId){
    return _siExisteSintomaObtenerPorcentaje(raiz, sintomaId);
  }
  int _siExisteSintomaObtenerPorcentaje(Nodo? p, int sintomaId){
    if(p == null) return 0;
    else{
      int porcentajeHI = _siExisteSintomaObtenerPorcentaje(p.hijoI, sintomaId);
      int porcentajeHD = _siExisteSintomaObtenerPorcentaje(p.hijoD, sintomaId);
      int s = porcentajeHI + porcentajeHD;
      if( s == 0 ){
        if(sintomaId == p.sintomaId) return p.porcentaje;
      }
      return s;
    }
  }
  int porcentajeTotal(List<int> lista){
    int suma = 0;
    for (var item in lista) {
      suma += siExisteSintomaObtenerPorcentaje(item);
    }
    return suma;
  }
}
/*
void main(){
  Arbol a1 = Arbol();
  a1.insertar(7);
  a1.insertar(3);
  a1.insertar(13);
  a1.inOrden();
}
*/