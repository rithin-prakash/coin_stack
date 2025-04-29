import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:coin_stack/features/profile/presentation/pages/profile_page.dart';
import 'package:coin_stack/features/support/presentation/pages/support_page.dart';
import 'package:coin_stack/features/transaction_history/presentation/pages/transaction_history_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  int _selectedIndex = 0;

  final List<Widget> widgetOptions = const [
    DashboardPage(),
    TransactionHistoryPage(),
    SupportPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimen.containerBorderRadius),
        ),

        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.blueGrey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Column(
                children: [
                  Icon(Icons.home),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    width: 4,
                    height: 4,
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              label: 'History',
              activeIcon: Column(
                children: [
                  Icon(Icons.pie_chart),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    width: 4,
                    height: 4,
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Support',
              activeIcon: Column(
                children: [
                  Icon(Icons.settings),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    width: 4,
                    height: 4,
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              activeIcon: Column(
                children: [
                  Icon(Icons.person),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    width: 4,
                    height: 4,
                  ),
                ],
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
