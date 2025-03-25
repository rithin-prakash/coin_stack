import 'package:coin_stack/features/dashboard/presentation/widgets/main_feature_container.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/money_info_container.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/transaction_summary.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late final scrollController = ScrollController();

  Color bgColor = Colors.black;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        bgColor = Theme.of(context).primaryColor;
      });
      scrollController.addListener(_scrolling);
      scrollController.position.isScrollingNotifier.addListener(
        _scrollNotifier,
      );
    });
  }

  _scrolling() {
    print('scrolling');
  }

  _scrollNotifier() {
    if (!scrollController.position.isScrollingNotifier.value) {
      print('scroll is stopped');
    } else {
      print('scroll is started');
    }
  }

  @override
  void dispose() {
    // scrollController.position.isScrollingNotifier.removeListener(
    //   _scrollNotifier,
    // );
    scrollController.removeListener(_scrolling);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.emoji_events, color: Colors.white, size: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white, size: 30),
          ),
        ],
        title: TextField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            hintText: 'Search "Payments"',
            hintStyle: TextStyle(color: Colors.white70),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: .9, color: Colors.white70),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: .9, color: Colors.white70),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // Container(
          //   height: MediaQuery.sizeOf(context).height * (1 / 3),
          //   width: double.infinity,
          //   color: bgColor,
          // ),
          SingleChildScrollView(
            controller: scrollController,
            child: Stack(
              children: [
                Column(children: [MoneyInfoContainer(), TransactionSummary()]),
                Positioned(
                  top: MediaQuery.sizeOf(context).height * (1 / 3) - 50,
                  right: 15,
                  left: 15,
                  child: MainFeatureContainer(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
