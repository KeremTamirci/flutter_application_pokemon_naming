import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  AnimatedImage({super.key, required this.imageToAnimate});
  final dynamic imageToAnimate;
  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 1750),
  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.network(
//        animatedImage,
        '${widget.imageToAnimate}',
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
