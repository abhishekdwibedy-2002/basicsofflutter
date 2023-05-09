import 'package:flutter/material.dart';
import 'package:first_app/textwidget.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.mix({super.key})
      : color1 = Colors.indigo,
        color2 = Colors.lightGreenAccent;
  final Color color1;
  final Color color2;
  //var activediceimg='assets/images/dice-2.png';

  void pressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2
          ] /*[
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ]*/
          ,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 150,
            ),
            const SizedBox(height: 20),
            //ElevatedButton(onPressed: pressed,  child:  const Text('Roll Dice'))
            //OutlinedButton(onPressed: pressed, child: const Text('Roll Dice'))
            TextButton(
                onPressed: pressed,
                style: TextButton.styleFrom(
                    //padding: const EdgeInsets.only(top: 20),
                    textStyle: const TextStyle(fontSize: 28),
                    foregroundColor: Colors.white),
                child: const Text('Roll Dice'))
          ],
        ),
      ),
    );
  }
}



/*
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:
              colors /*[
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ]*/
          ,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyleText('HELLO !!'),
      ),
    );
  }
}
*/