import 'package:diagnostico_de_enfermedades/logic/arboles_sintomas.dart';
import 'package:diagnostico_de_enfermedades/models/enfermedad.dart';
import 'package:diagnostico_de_enfermedades/view/widget/pregunta.dart';
import 'package:flutter/material.dart';

import 'data/datos.dart';
import 'models/sintoma.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PreDiagnostico',
      home: Home()
    );
  }
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ArbolesSintomas arbolesSintomas = ArbolesSintomas();
  List<PreguntaWidget> listaSintomas = [];

  List<PreguntaWidget> cargarSintomas(){
    return Datos.sintomas.map((sintoma) {
      return PreguntaWidget(
          pregunta: '${sintoma.id} - ${sintoma.nombre}'
      );
    }).toList();
  }
  @override
  void initState() {
    listaSintomas = cargarSintomas();
    arbolesSintomas.cargarArboles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pre-Diagnóstico'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: Container(
                    color: Colors.grey[300],
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Marque las casillas si tiene alguno de los siguientes Síntomas :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: listaSintomas,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children:[
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){
                          //print('Ok');
                          List<PreguntaWidget> preguntas = listaSintomas.where((element) => element.marca == true).toList();
                          if(preguntas.length == 1){
                            List<String> x = arbolesSintomas.contarPorcentajeTodas(preguntas);
                            Sintoma s = Datos.sintomas.firstWhere((element) => element.id == int.parse(preguntas.first.pregunta!.split(' ')[0]));
                            print(s.id);
                            List<TextSpan> re = [];
                            for (var a in x) {
                              String enfermedadId = a.split('|')[0];
                              print(enfermedadId);
                              Enfermedad e = Datos.enfermedades.firstWhere((element) => element.id == int.parse(enfermedadId));
                              int porcentaje = int.parse(a.split('|')[1]);
                              re.add(
                                TextSpan(text: '${e.nombre} : ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12))
                              );
                              re.add(
                                TextSpan(text: "${porcentaje} %\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              );
                            }
                            showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: const Text(
                                    "DIAGNOSTICO TOTAL DE SINTOMAS : ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    content: RichText(
                                      text: TextSpan(
                                        text: '${s.nombre}\n',
                                        style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold, fontSize: 15),
                                        children: re
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            child: const Text("Cerrar"),
                                            onPressed: () {
                                              setState(() {
                                                listaSintomas = cargarSintomas();
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            return;
                          }
                          if ( preguntas.length < 3 || preguntas.length > 10 ){
                            showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: const Text(
                                    "NOTA : ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    content: RichText(
                                      text: TextSpan(
                                        text: '',
                                        style: TextStyle(color: Colors.blue[900]),
                                        children: const <TextSpan>[
                                          TextSpan(text: "Debe marcar "),
                                          TextSpan(text: "mínimo: 3 Síntomas", style: TextStyle(fontWeight: FontWeight.bold)),
                                          TextSpan(text: " y "),
                                          TextSpan(text: "máximo : 10 Síntomas", style: TextStyle(fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            child: const Text("Cerrar"),
                                            onPressed: () {
                                              setState(() {
                                                listaSintomas = cargarSintomas();
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            return;
                          }
                          String resultado = arbolesSintomas.contarPorcentaje(preguntas);
                          int enfermedadId = int.parse(resultado.split('|')[0]);
                          int probabilidad = int.parse(resultado.split('|')[1]);
                          Enfermedad e1 = Datos.enfermedades.where((element) => element.id == enfermedadId).first;
                          showDialog(
                            context: context,
                            builder: (_) {
                              // return object of type AlertDialog
                              return AlertDialog(
                                title: const Text(
                                  "RESULTADOS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                content: RichText(
                                  text: TextSpan(
                                    text: '',
                                    style: TextStyle(color: Colors.blue[900]),
                                    children: <TextSpan>[
                                      const TextSpan(text: "Posible enfermedad : ", style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: "${e1.nombre}"),
                                      const TextSpan(text: "\n"),
                                      const TextSpan(text: "Probabilidad : ", style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: "$probabilidad%")
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  // usually buttons at the bottom of the dialog
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: const Text("Cerrar"),
                                        onPressed: () {
                                          setState(() {
                                            listaSintomas = cargarSintomas();
                                          });
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'DIAGNOSTICAR',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 2
                            ),
                          ),
                        )
                      ),
                    ),
                  ]
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}