import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          _HeaderIcon(),
          child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BounceInDown(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 1),
          // child: Icon(Icons.person_pin, color: Colors.red, size: 100),
          child: Image.asset(
            'assets/logo-principal.png',
            width: 580,
            height: 285,
          ),
        ),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    lapiz.color = const Color.fromARGB(255, 254, 254, 254);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();
    //path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: _purpleBackground(),
      child: Pulse(
        // infinite: true,
        //duration: Duration(milliseconds: 3000),
        child: CustomPaint(
          painter: _HeaderDiagonalPainter(),
          child: Stack(children: [
            Positioned(top: 90, left: 10, child: _Bubble()),
            Positioned(top: 200, left: 1, child: _Bubble()),
            Positioned(top: -50, right: -20, child: _Bubble()),
            Positioned(bottom: -50, left: 10, child: _Bubble()),
            Positioned(bottom: 120, right: 20, child: _Bubble()),
            Positioned(bottom: 75, left: 100, child: _Bubble()),
          ]),
        ),
      ),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1)
      ]));
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
