import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: const BoxDecoration(
            color: Color(0xff615AAB),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70),
            )));
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final llapis = Paint();
    // propietats
    llapis.color = const Color(0xff615AAB);
    llapis.style = PaintingStyle.fill; // .stroke
    llapis.strokeWidth = 5;
    final tras = Path();
    // dibuixar el traç amb el llapis
    tras.moveTo(0, size.height * 0.35);
    tras.lineTo(size.width, size.height * 0.30);
    tras.lineTo(size.width, 0);
    tras.lineTo(0, 0);
    tras.lineTo(0, size.height * 0.5);
    canvas.drawPath(tras, llapis);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
