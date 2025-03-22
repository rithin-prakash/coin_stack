import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';

final cardList = [('************5536', 'us'), ('***********67778', 'in')];

class AccountSelectPayButtonContainer extends StatefulWidget {
  const AccountSelectPayButtonContainer({super.key});

  @override
  State<AccountSelectPayButtonContainer> createState() =>
      _AccountSelectPayButtonContainerState();
}

class _AccountSelectPayButtonContainerState
    extends State<AccountSelectPayButtonContainer> {
  var selectedCard = cardList.last;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimen.pagePadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimen.pagePadding,
            ),
            child: DropdownButton<(String, String)>(
              value: selectedCard,
              isDense: true,
              isExpanded: true,
              padding: EdgeInsets.zero,
              icon: Icon(Icons.keyboard_arrow_down_outlined),
              underline: Container(),
              items:
                  cardList
                      .map<DropdownMenuItem<(String, String)>>(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.money),
                              SizedBox(width: 6),
                              Text(e.$1),
                            ],
                          ),
                        ),
                      )
                      .toList(),
              onChanged: (v) {
                if (v == null) return;
                setState(() {
                  selectedCard = v;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text('Send 65238')),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
