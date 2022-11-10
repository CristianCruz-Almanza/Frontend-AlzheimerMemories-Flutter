import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontent_alzheimermemories_flutter/ui/cards/card.dart';

import '../ui/labels/custom_labels.dart';

class InfoAlzheimerScreen extends StatelessWidget {
  const InfoAlzheimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  FadeInLeft(
                    child: WhiteCard(
                      //width: isRow ? sizeCard! - 50 : sizeCard,
                      //width: 350,
                      child: Column(
                        children: [
                          Text(
                            "Que es el Alzheimer?",
                            style: CustomLabels.h2,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'El Alzheimer es un tipo de demencia que causa problemas con la memoria, el pensamiento y el comportamiento. Los síntomas generalmente se desarrollan lentamente y empeoran con el tiempo, hasta que son tan graves que interfieren con las tareas cotidianas',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 95,
                    right: 5,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: const Color.fromRGBO(102, 165, 173, 1),
                            width: 4),
                      ),
                      child: FloatingActionButton(
                        heroTag: 'btn1',
                        onPressed: () {},
                        backgroundColor: const Color.fromRGBO(0, 59, 70, 1),
                        child: const FaIcon(
                          FontAwesomeIcons.question,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  FadeInRight(
                    child: WhiteCard(
                      //width: isRow ? sizeCard! - 50 : sizeCard,
                      //width: 350,
                      child: Column(
                        children: [
                          Text(
                            "Cuales son los sintomas?",
                            style: CustomLabels.h2,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Cambios de memoria que dificultan la vida cotidiana \nDificultad para planificar o resolver problemas \nDificultad para desempeñar tareas habituales en la casa, en el trabajo o en su tiempo libre',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 95,
                    right: 5,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: const Color.fromRGBO(102, 165, 173, 1),
                            width: 4),
                      ),
                      child: FloatingActionButton(
                        heroTag: 'btn2',
                        onPressed: () {},
                        backgroundColor: const Color.fromRGBO(0, 59, 70, 1),
                        child: const FaIcon(
                          FontAwesomeIcons.kitMedical,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  FadeInLeft(
                    child: WhiteCard(
                      //width: isRow ? sizeCard! - 50 : sizeCard,
                      //width: 350,
                      child: Column(
                        children: [
                          Text(
                            "Como ayudarlos?",
                            style: CustomLabels.h2,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Ayudar a la persona a permanecer calmada y orientada\nHacer que vestirse y asearse sea más fácil\nHablar con la persona\nAyudar con la pérdida de la memoria',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 95,
                    right: 5,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: const Color.fromRGBO(102, 165, 173, 1),
                            width: 4),
                      ),
                      child: FloatingActionButton(
                        heroTag: 'btn3',
                        onPressed: () {},
                        backgroundColor: const Color.fromRGBO(0, 59, 70, 1),
                        child: const FaIcon(
                          FontAwesomeIcons.angleRight,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
