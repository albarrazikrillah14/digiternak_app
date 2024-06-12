import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  final List<BcsData> data;
  final String type;
  const LineChartSample2({super.key, required this.data, required this.type});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    Colors.cyan,
    Colors.blue,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1.5,
        child: Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 18,
                  left: 12,
                  top: 24,
                  bottom: 12,
                ),
                child: LineChart(
                  mainData(),
                ),
              ),
            ),
            SizedBox(
              width: 60,
              height: 34,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    showAvg = !showAvg;
                  });
                },
                child: Text(
                  'avg',
                  style: TextStyle(
                    fontSize: 12,
                    color:
                        showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt() - 1) {
      case 0:
        text = const Text('JAN', style: style);
        break;
      case 1:
        text = const Text('FEB', style: style);
        break;
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 3:
        text = const Text('APR', style: style);
        break;
      case 4:
        text = const Text('MAY', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 6:
        text = const Text('JUL', style: style);
        break;
      case 7:
        text = const Text('AUG', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      case 9:
        text = const Text('OCT', style: style);
        break;
      case 10:
        text = const Text('NOV', style: style);
        break;
      case 11:
        text = const Text('DEC', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;

    switch (value.toInt()) {
      case 100:
        text = '100';
        break;
      case 200:
        text = '200';
        break;
      case 300:
        text = '300';
        break;
      case 400:
        text = '400';
        break;
      case 500:
        text = '500';
        break;
      case 600:
        text = '600';
        break;
      case 700:
        text = '700';
        break;
      case 800:
        text = '800';
        break;
      case 900:
        text = '900';
        break;
      case 1000:
        text = '1000';
        break;
      default:
        return Container();
    }

    if (widget.type == "Berat Badan") {
      text = "$text kg";
    } else {
      text = "$text cm";
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    List<BcsData> sortedData = List.from(widget.data);
    sortedData.sort((a, b) {
      List<String> partsA = a.createdAt.split(" ");
      List<String> partsB = b.createdAt.split(" ");
      if (partsA.length == 2 && partsB.length == 2) {
        // Ambil bagian bulan (indeks 0 adalah tahun, indeks 1 adalah bulan)
        int monthA = int.tryParse(partsA[0].split("-")[1]) ?? 0;
        int monthB = int.tryParse(partsB[0].split("-")[1]) ?? 0;
        return monthA.compareTo(monthB);
      }
      return 0;
    });

    List<FlSpot> spots = [];

    spots = sortedData.map((data) {
      List<String> dateTimeParts = data.createdAt.split(" ");
      if (dateTimeParts.length == 2) {
        String datePart = dateTimeParts[0];
        List<String> dateParts = datePart.split("-");
        if (dateParts.length == 3) {
          // Ambil bagian bulan dari tanggal
          double x = double.tryParse(dateParts[1]) ?? 0.0;
          double y = 0;
          switch (widget.type) {
            case "Berat Badan":
              y = data.bodyWeight.toDouble();
              break;
            case "Ukuran Dada":
              y = data.chestSize.toDouble();
              break;
            case "Ukuran Pinggul":
              y = data.hips.toDouble();
              break;
            default:
              y = 0;
              break;
          } // Ambil berat badan
          return FlSpot(x, y);
        }
      }
      return FlSpot(0.0, 0.0); // Default value if parsing fails
    }).toList();

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.white,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.blue,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 1,
      maxX: 12,
      minY: 0,
      maxY: 1000,
      lineBarsData: [
        LineChartBarData(
          spots: spots,
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
