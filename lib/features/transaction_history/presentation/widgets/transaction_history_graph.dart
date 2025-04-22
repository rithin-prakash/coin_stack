import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_graph_response.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/selected_txn_cat_bloc/selected_txn_cat_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_date_selection_bloc/txn_date_selection_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_history_graph_bloc/txn_history_graph_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_history_graph_bloc/txn_history_graph_state.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class TransactionHistoryGraph extends StatefulWidget {
  const TransactionHistoryGraph({super.key});

  @override
  State<TransactionHistoryGraph> createState() =>
      _TransactionHistoryGraphState();
}

class _TransactionHistoryGraphState extends State<TransactionHistoryGraph> {
  @override
  void initState() {
    super.initState();

    context.read<TxnHistoryGraphBloc>().loadHistoryGraph(
      context.read<SelectedTxnCatBloc>().state,
      context.read<TxnDateSelectionBloc>().state,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: BlocBuilder<TxnHistoryGraphBloc, TxnHistoryGraphState>(
        builder: (_, s) {
          if (s is TxnHistoryGraphLoading) {
            return TransactionHistoryGraphShimmer();
          } else if (s is TxnHistoryGraphLoaded) {
            return LineChart(
              mainData(s.res.data),
              duration: Duration(milliseconds: 150),
              curve: Curves.linear,
            );
          } else if (s is TxnHistoryGraphFailed) {
            return Text(s.failure.message);
          }
          return Container();
        },
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 12);
    // String text;
    // switch (value.toInt()) {
    //   case 2:
    //     text = value.toInt().toString();
    //     break;
    //   case 5:
    //     text = const Text('JUN', style: style);
    //     break;
    //   case 8:
    //     text = const Text('SEP', style: style);
    //     break;
    //   default:
    //     text = const Text('', style: style);
    //     break;
    // }

    return SideTitleWidget(
      meta: meta,
      child: Text(value.toInt().toString(), style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 12);
    // String text;
    // switch (value.toInt()) {
    //   case 1:
    //     text = '1';
    //     break;
    //   case 3:
    //     text = '3';
    //     break;
    //   case 5:
    //     text = '5';
    //     break;
    //   default:
    //     return Container();
    // }

    return Text(
      value.toInt().toString(),
      style: style,
      textAlign: TextAlign.left,
    );
  }

  final List<Color> gradientColors = [Colors.red, Colors.orange];

  LineChartData mainData(List<TxnHistoryGraphData> data) {
    final spot =
        data.map((e) => FlSpot(e.x.toDouble(), e.y.toDouble())).toList();
    return LineChartData(
      lineTouchData: LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.black,
        ),
      ),
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        // getDrawingHorizontalLine: (value) {
        //   return const FlLine(color: Colors.black, strokeWidth: 1);
        // },
        // getDrawingVerticalLine: (value) {
        //   return const FlLine(color: Colors.black, strokeWidth: 1);
        // },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
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
            getTitlesWidget: (x, s) => leftTitleWidgets(x, s),
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: const Color(0xff37434d)),
          left: BorderSide(color: const Color(0xff37434d)),
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 11,
      lineBarsData: [
        LineChartBarData(
          spots: spot,
          isCurved: true,
          gradient: LinearGradient(colors: gradientColors),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:
                  gradientColors
                      .map((color) => color.withValues(alpha: 0.3))
                      .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class TransactionHistoryGraphShimmer extends StatelessWidget {
  const TransactionHistoryGraphShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.simmerBg,
      highlightColor: AppColors.simmerFg,
      child: Row(
        children: [
          Flexible(
            child: Container(
              // height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
