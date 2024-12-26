// lib/widgets/animated_counter.dart
import 'package:flutter/material.dart';

class AnimatedCounter extends StatefulWidget {
  final String label;
  final int endValue;
  final String prefix;
  final String suffix;

  const AnimatedCounter({super.key, 
    required this.label,
    required this.endValue,
    this.prefix = '',
    this.suffix = '',
  });

  @override
  _AnimatedCounterState createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0,
      end: widget.endValue.toDouble(),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Text(
              '${widget.prefix}${_animation.value.toInt()}${widget.suffix}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        Text(
          widget.label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}