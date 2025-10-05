// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class AnimatedImage extends StatefulWidget {
//   const AnimatedImage({super.key});

//   @override
//   State<AnimatedImage> createState() => _AnimatedImageState();
// }

// class _AnimatedImageState extends State<AnimatedImage> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
//     _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//     _controller.forward();
//      
//     super.initState();
//   }
//   @override
//   void dispose() {
//     _controller.dispose();
//     
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  FadeTransition(opacity: _animation,child: CircleAvatar(
//         radius: 80,
//         backgroundImage: AssetImage("assets/pola.png"), // 
//       ),);
//   }
// }
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimatedImage extends StatelessWidget {
  const AnimatedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
FadeInDown(
  child: CircleAvatar(
    radius: 180,
    backgroundImage: AssetImage("assets/pola.png"),
  ),
);
  }
}