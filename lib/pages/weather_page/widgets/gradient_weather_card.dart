import 'package:flutter/material.dart';

enum GradientPosition {
  down(Alignment.bottomCenter, Alignment.topCenter),
  left(Alignment.centerLeft, Alignment.centerRight),
  right(Alignment.centerRight, Alignment.centerLeft),
  top(Alignment.topCenter, Alignment.bottomCenter);

  final Alignment begin;
  final Alignment end;
  const GradientPosition(this.begin, this.end);
}

class GradientWeatherCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final GradientPosition gradientPosition;

  const GradientWeatherCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.gradientPosition,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: gradientPosition.begin,
          end: gradientPosition.end,
          colors: const [
            Color(0xFF6C9FFF),
            Color(0xFF9B6FFF),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
