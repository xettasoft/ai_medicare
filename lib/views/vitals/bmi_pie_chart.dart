import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BMIPieChart extends StatelessWidget {
  const BMIPieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
            pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {}),
            startDegreeOffset: 270,
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 1,
            centerSpaceRadius: 0,
            sections: showingSections()),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      2,
      (i) {
        const color0 = Colors.red;
        const color1 = Colors.white;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: 25,
              title: '20,1',
              radius: 60,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              titlePositionPercentageOffset: 0.55,
              borderSide: BorderSide(color: color0.withOpacity(0)),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: 75,
              title: '',
              radius: 50,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff90672d)),
              titlePositionPercentageOffset: 0.55,
              borderSide: BorderSide(color: color1),
            );

          default:
            throw Error();
        }
      },
    );
  }
}
