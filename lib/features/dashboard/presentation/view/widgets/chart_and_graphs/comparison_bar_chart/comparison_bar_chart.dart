import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class ComparisonBarChart extends StatelessWidget {
  const ComparisonBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return  BarChart(
        BarChartData(
          borderData: FlBorderData(
            show: false
          ),
          barGroups: _chartGroups(),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(sideTitles: SideTitles()),
            rightTitles: const AxisTitles(sideTitles: SideTitles()),
            bottomTitles: AxisTitles(sideTitles: _bottomTitles)
          ),
    ));
  }
}

List<BarChartGroupData> _chartGroups() {
  return [1,0.9,0.5,0.2,0.8,0.8,0.8].map((point) =>
      BarChartGroupData(
          x: point.toInt(),
          barRods: [
            BarChartRodData(
                toY: point.toDouble()
            )
          ]
      )

  ).toList();
}

SideTitles get _bottomTitles => SideTitles(
  showTitles: true,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 2:
        text = 'Mar';
        break;
      case 4:
        text = 'May';
        break;
      case 6:
        text = 'Jul';
        break;
      case 8:
        text = 'Sep';
        break;
      case 10:
        text = 'Nov';
        break;
    }

    return Text(text);
  },
);

