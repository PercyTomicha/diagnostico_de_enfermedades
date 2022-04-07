import 'package:flutter/material.dart';

class PreguntaWidget extends StatefulWidget {
  String? pregunta;
  bool marca = false;
  PreguntaWidget({Key? key, this.pregunta}) : super(key: key);

  @override
  State <PreguntaWidget> createState() =>  PreguntaWidgetState();
}

class  PreguntaWidgetState extends State <PreguntaWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.pregunta!,
                  style: const TextStyle(
                    fontSize: 12
                  ),
                ),
              ),
              const Spacer(),
              Checkbox(
                value: widget.marca,
                onChanged: (value){
                  setState(() {
                    widget.marca = value!;
                  });
                },
              )
            ],
          ),
        ),
        const Divider(
          height: 2,
        )
      ],
    );
  }
}