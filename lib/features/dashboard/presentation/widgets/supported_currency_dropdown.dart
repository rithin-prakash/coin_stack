import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/features/profile/domain/models/currency.dart';
import 'package:coin_stack/features/profile/presentation/bloc/support_currency_bloc/support_currency_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupportedCurrencyDropdown extends StatelessWidget {
  const SupportedCurrencyDropdown({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SupportCurrencyListCubit, List<Currency>>(
      builder: (_, state) {
        if (state.isEmpty) {
          return Text(
            'Currency is empty',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.white),
          );
        }
        return DropdownButton<Currency>(
          value: state.first,
          padding: EdgeInsets.zero,
          style: TextStyle(color: color),
          icon: Icon(Icons.keyboard_arrow_down_outlined, color: color),
          underline: Container(),
          dropdownColor: Theme.of(context).primaryColorDark,
          items:
              state
                  .map<DropdownMenuItem<Currency>>(
                    (e) => DropdownMenuItem<Currency>(
                      value: e,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage(
                              '${AppAssets.countryFlag}/${e.flagCode}.webp',
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(e.name, style: TextStyle(color: color)),
                        ],
                      ),
                    ),
                  )
                  .toList(),
          onChanged: (v) {
            if (v == null) return;
          },
        );
      },
    );
  }
}
