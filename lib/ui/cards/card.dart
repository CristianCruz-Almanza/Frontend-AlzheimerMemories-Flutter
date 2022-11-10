import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteCard extends StatelessWidget {
  final String? title;
  final Widget child;
  final double? width;
  final Color? color;

  const WhiteCard({
    Key? key,
    required this.child,
    this.title,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                title!,
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider()
          ],
          Center(child: child)
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
          color: color,
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Color.fromRGBO(104, 130, 158, 1),
                Color.fromRGBO(80, 81, 96, 1)
              ]),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)
          ]);
}

class WhiteCard2 extends StatelessWidget {
  final String? title;
  final Widget child;
  final double? width;

  const WhiteCard2({
    Key? key,
    required this.child,
    this.title,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 425,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                title!,
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider()
          ],
          child
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)
          ]);
}

class WhiteCardCustom extends StatelessWidget {
  final String? title;
  final Widget child;
  final double? width;
  final Color color;

  const WhiteCardCustom(
      {Key? key,
      required this.child,
      this.title,
      this.width,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                title!,
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider()
          ],
          child
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)
          ]);
}

class WhiteCard3 extends StatelessWidget {
  final String? title;
  final Widget child;
  final double? width;

  const WhiteCard3({
    Key? key,
    required this.child,
    this.title,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                title!,
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider()
          ],
          child
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
          color: const Color.fromRGBO(74, 193, 224, 1),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)
          ]);
}
