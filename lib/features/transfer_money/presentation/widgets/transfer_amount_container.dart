import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final curList = [('US Dollor', 'us'), ('Indian Ruppee', 'in')];

class TransferAmountContainer extends StatefulWidget {
  const TransferAmountContainer({super.key});

  @override
  State<TransferAmountContainer> createState() =>
      _TransferAmountContainerState();
}

class _TransferAmountContainerState extends State<TransferAmountContainer> {
  var selectedCur = curList.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(
              'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671116.jpg?t=st=1742637889~exp=1742641489~hmac=bc27ea8e7479df110df0322449bf3bb12a7103dbb5fe465dc08913780323a51f&w=1380',
            ),
          ),
          SizedBox(height: 8),
          Text('Name', style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 2),
          Text('+9875689876', style: Theme.of(context).textTheme.bodyLarge),
          DropdownButton<(String, String)>(
            value: selectedCur,
            padding: EdgeInsets.zero,
            icon: Icon(Icons.keyboard_arrow_down_outlined),
            underline: Container(),
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
                            Text(e.$1),
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
          SizedBox(height: 20),
          TextField(
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: '0.0',
              hintStyle: Theme.of(
                context,
              ).inputDecorationTheme.hintStyle?.copyWith(fontSize: 40),
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: .9, color: AppColors.inputBorder),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: .9, color: AppColors.inputBorder),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: .9, color: AppColors.inputBorder),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
