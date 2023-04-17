import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: -80,
              top: 40,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFFD50000).withOpacity(.5),
                      Colors.white.withOpacity(.0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: -100,
              top: 120,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.cyan.withOpacity(.3),
                      Colors.white.withOpacity(.0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 70,
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/swift.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
