import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:flutter/material.dart';

final curList = [('US Dollor', 'us'), ('Indian Ruppee', 'in')];

class MoneyInfoContainer extends StatefulWidget {
  const MoneyInfoContainer({super.key});

  @override
  State<MoneyInfoContainer> createState() => _MoneyInfoContainerState();
}

class _MoneyInfoContainerState extends State<MoneyInfoContainer> {
  var selectedCur = curList.first;
  var amountVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      height: MediaQuery.sizeOf(context).height * (1 / 3),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DropdownButton<(String, String)>(
            value: selectedCur,
            padding: EdgeInsets.zero,
            style: const TextStyle(color: Colors.white),
            icon: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white),
            underline: Container(),
            dropdownColor: Theme.of(context).primaryColorDark,
            items:
                curList
                    .map<DropdownMenuItem<(String, String)>>(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(
                                '${AppAssets.countryFlag}/${e.$2}.webp',
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(e.$1, style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                    .toList(),
            onChanged: (v) {
              if (v == null) return;
              setState(() {
                selectedCur = v;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                amountVisible ? '\$20000' : '***',
                style: Theme.of(
                  context,
                ).textTheme.displaySmall?.copyWith(color: Colors.white),
              ),
              SizedBox(width: 4),
              IconButton(
                onPressed: () {
                  setState(() {
                    amountVisible = !amountVisible;
                  });
                },
                icon: Icon(
                  amountVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          Text(
            'Available balance',
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(color: Colors.white60),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
              minimumSize: WidgetStatePropertyAll(Size(150, 50)),
              maximumSize: WidgetStatePropertyAll(Size(200, 50)),
              iconColor: WidgetStatePropertyAll(Colors.white),
              iconSize: WidgetStatePropertyAll(28),
              // backgroundColor: WidgetStatePropertyAll(Colors.white),
              textStyle: WidgetStatePropertyAll(
                TextStyle(color: Colors.white, fontSize: 18),
              ),
              side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
            ),
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.credit_score_outlined),
                SizedBox(width: 10),
                Text('Add Money', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: 25), //added for visibility stack widget
        ],
      ),
    );
  }
}
