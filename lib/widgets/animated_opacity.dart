import 'package:flutter/material.dart';

class AnimatedOpacityRepeat extends StatefulWidget {
  const AnimatedOpacityRepeat({super.key});

  @override
  State<AnimatedOpacityRepeat> createState() => _AnimatedOpacityStateRepeat();
}

class _AnimatedOpacityStateRepeat extends State<AnimatedOpacityRepeat>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 875),
  )..repeat(reverse: true);
  late Animation<double> _animation = Tween(
    begin: 0.25,
    end: 1.0,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        "assets/images/light2.png",
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
