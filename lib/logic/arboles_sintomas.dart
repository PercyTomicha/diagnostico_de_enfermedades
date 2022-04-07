import 'package:diagnostico_de_enfermedades/logic/arbol.dart';
import 'package:diagnostico_de_enfermedades/models/enfermedad_sintoma.dart';
import '../data/datos.dart';
import '../view/widget/pregunta.dart';

class ArbolesSintomas{
  List<Arbol> arboles = [];
  ArbolesSintomas();

  cargarArboles(){
    List<List<EnfermedadSintoma>> lista = Datos.datos;
    for (var item in lista) {
      Arbol a = Arbol();
      a.insertarLista(item);
      arboles.add(a);
    }
  }

  String contarPorcentaje(List<PreguntaWidget> lista){
    List<int> a = [];
    lista.forEach((element) {
      a.add(int.parse(element.pregunta!.split(' ')[0]));
    });
    int mayor = 0;
    int indice = 1;
    int enfermedadId = 1;
    for (var arbol in arboles) {
      int aux = arbol.porcentajeTotal(a);
      if( aux > mayor ){
        mayor = aux;
        enfermedadId = indice;
      }
      indice++;
    }
    return '${enfermedadId}|$mayor';
  }

  List<String> contarPorcentajeTodas(List<PreguntaWidget> lista){
    List<int> a = [];
    lista.forEach((element) {
      a.add(int.parse(element.pregunta!.split(' ')[0]));
    });
    int indice = 1;
    int enfermedadId = 1;
    List<String> s = [];
    for (var arbol in arboles) {
      int aux = arbol.porcentajeTotal(a);
      if(aux != 0){
        //print('${indice}|{$aux}');
        s.add('$indice|$aux');
      }
      indice++;
    }
    return s;
  }
}