import 'package:cached_network_image/cached_network_image.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/supported_currency_dropdown.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_form_bloc/transfer_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shimmer/shimmer.dart';

class TransferAmountContainer extends StatefulWidget {
  const TransferAmountContainer({super.key});

  @override
  State<TransferAmountContainer> createState() =>
      _TransferAmountContainerState();
}

class _TransferAmountContainerState extends State<TransferAmountContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: BlocBuilder<SelectProfileBloc, SelectProfileState>(
        builder: (_, state) {
          if (state is SelectProfileLoading) {
            return Shimmer.fromColors(
              baseColor: AppColors.simmerBg,
              highlightColor: AppColors.simmerFg,
              child: Container(),
            );
          }
          if (state is SelectProfileFailed) {
            return Text(
              'Profile loading failed\n ${state.failure.message}',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.red),
            );
          }
          if (state is SelectProfileLoaded) {
            return Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 45,
                  backgroundImage: CachedNetworkImageProvider(
                    state.profile.profileUrl ?? '',
                    errorListener: (p0) {},
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  state.profile.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 2),
                Text(
                  state.profile.phone,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SupportedCurrencyDropdown(color: Colors.black),
                SizedBox(height: 20),
                ReactiveTextField(
                  formControlName: amount,
                  style: TextStyle(fontSize: 40),
                  textAlign: TextAlign.center,
                  showErrors: (control) => false,
                  validationMessages: generateValidationMessages(
                    context.read<TransferFormBloc>().validation,
                    'amount',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: '0.0',
                    hintStyle: Theme.of(
                      context,
                    ).inputDecorationTheme.hintStyle?.copyWith(fontSize: 40),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: .9,
                        color: AppColors.inputBorder,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: .9,
                        color: AppColors.inputBorder,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: .9,
                        color: AppColors.inputBorder,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            );
          }
          return Text(
            'Profile not found',
            style: Theme.of(context).textTheme.titleMedium,
          );
        },
      ),
    );
  }
}
