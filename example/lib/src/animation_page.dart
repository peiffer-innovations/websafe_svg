import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({
    Key key,
  }) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  Color color;
  Animation<Color> colorAnimation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    colorAnimation = ColorTween(
      begin: Colors.green,
      end: Colors.blue,
    ).animate(controller);

    controller.repeat(
      reverse: true,
      period: const Duration(
        milliseconds: 1000,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: colorAnimation,
          builder: (context, w) {
            return Container(
              color: const Color(0xffa0a0a0),
              margin: const EdgeInsets.all(124),
              padding: const EdgeInsets.all(20.0),
              child: WebsafeSvg.asset(
                'assets/svgs/angry.svg',
                color: colorAnimation.value,
                height: 100.0,
                width: 100.0,
              ),
            );
          },
        ),
      ),
    );
  }
}
