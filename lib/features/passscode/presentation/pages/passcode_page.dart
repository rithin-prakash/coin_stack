import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/utls/ui_helper.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/passscode/presentation/blocs/create_passcode_bloc/create_passcode_bloc.dart';
import 'package:coin_stack/features/passscode/presentation/blocs/create_passcode_bloc/create_passcode_state.dart';
import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class PasscodePage extends StatelessWidget {
  const PasscodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreatePasscodeBloc>(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocListener<CreatePasscodeBloc, CreatePasscodeState>(
          listener: (context, state) {
            if (state is CreatePasscodeLoaded) {
              Navigator.pop(context);
              context.replaceRoute(CreateAccountSuccessPageRoute());
            }
            if (state is CreatePasscodeLoading) {
              showLoader(context);
            } else if (state is CreatePasscodeFailed) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.failure.message),
                ),
              );
            }
          },
          child: BlocBuilder<UserCubit, UserState>(
            buildWhen: (previous, current) => current is UserLoaded,
            builder: (_, s) {
              if (s is UserLoaded) {
                return Passcode(s.u);
              }
              return SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

class Passcode extends StatefulWidget {
  const Passcode(this.u, {super.key});

  final User u;

  @override
  State<Passcode> createState() => _PasscodeState();
}

class _PasscodeState extends State<Passcode> {
  String title = "";
  String subtitle = "";
  bool isSettingsPassword = false;
  bool isConfirmingPassword = false;
  String settingPassword = '';
  String confirmingPassword = '';
  bool showPasswordMatchError = false;

  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      title =
          widget.u.isPasscodeSet
              ? "Enter the passcode"
              : "Create your passcode";

      subtitle =
          widget.u.isPasscodeSet
              ? ""
              : "Create a passcode for your authentication";
      isSettingsPassword = !widget.u.isPasscodeSet;
    });

    controller.addListener(handleInput);
  }

  handleInput() {
    if (controller.text.length == 4) {
      if (isSettingsPassword) {
        if (isConfirmingPassword) {
          confirmingPassword = controller.text;
          if (confirmingPassword != settingPassword) {
            setState(() {
              showPasswordMatchError = true;
            });
            controller.text = '';
          } else {
            setState(() {
              showPasswordMatchError = false;
            });
            controller.text = '';
            context.read<CreatePasscodeBloc>().savePasscode(confirmingPassword);
          }
        } else {
          setState(() {
            settingPassword = controller.text;
            isConfirmingPassword = true;
            title = "Confirm the password";
          });
          controller.text = '';
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AccountProgressIndicator(value: .6),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.center,
                child: Pinput(
                  controller: controller,
                  length: 4,
                  preFilledWidget: Text(
                    '\u25CF',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(),
                  ),
                  obscureText: true,
                  obscuringCharacter: '\u25CF',
                  obscuringWidget: Text(
                    '\u25CF',
                    style: TextStyle(fontSize: 30),
                  ),
                  showCursor: false,
                ),
              ),
              if (showPasswordMatchError)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Password does\'nt match',
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(color: Colors.red),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
