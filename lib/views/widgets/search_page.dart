import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/favorites_provider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final List<double> chartData = [0, 0, 0];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    chartData[0] = 12;
    chartData[1] = 12 - Provider.of<FavoriteProvider>(context, listen: true).totalAmount * 1.0;
    chartData[2] = Provider.of<FavoriteProvider>(context, listen: true).totalAmount * 1.0;

    return Container(
      height: MediaQuery.of(context).size.height,
      child: CustomPaint(
        painter: BarChartPainter(
          chartData: chartData,
          animation: _animation,
        ),
      ),
    );
  }
}
class BarChartPainter extends CustomPainter {
  final List<double> chartData;
  final Animation<double> animation;

  BarChartPainter({required this.chartData, required this.animation})
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final double barWidth = size.width / chartData.length;
    double maxHeight = chartData.reduce(max) + 10;

    Paint paint = Paint()
      ..color = Colors.white30
      ..style = PaintingStyle.fill;

    for (int i = 0; i < chartData.length; i++) {
      double barHeight = chartData[i] / maxHeight * size.height;
      double x = i * barWidth + barWidth / 2;
      double y = size.height - barHeight * animation.value;

      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(x, y),
          width: barWidth * 0.8,
          height: barHeight,
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(BarChartPainter oldDelegate) {
    return true;
  }
}