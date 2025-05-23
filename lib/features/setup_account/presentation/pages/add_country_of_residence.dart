import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_async_dropdown_search_field.dart';
import 'package:coin_stack/core/utls/ui_helper.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/country_list_bloc/country_list_bloc.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/country_of_residence_bloc/country_of_residence_bloc.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/country_of_residence_bloc/update_country_of_residence_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddCountryOfResidence extends StatelessWidget {
  const AddCountryOfResidence({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<CountryOfResidenceBloc>()),
        BlocProvider(create: (_) => getIt<CountryListBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(),
        body: Builder(
          builder: (context) {
            return BlocListener<
              CountryOfResidenceBloc,
              UpdateCountryOfResidenceState
            >(
              listener: (context, state) {
                if (state is UpdateCountryOfResidenceSuccess) {
                  Navigator.pop(context);
                  context.replaceRoute(VerifyAccountIntroPageRoute());
                }
                if (state is UpdateCountryOfResidenceLoading) {
                  showLoader(context);
                } else if (state is UpdateCountryOfResidenceFailure) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(state.failure.message),
                    ),
                  );
                }
              },
              child: ReactiveFormBuilder(
                form: () => context.read<CountryOfResidenceBloc>().form,
                builder: (_, form, _) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AccountProgressIndicator(value: .2),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppDimen.pagePadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 16),
                              Text(
                                "Country of residence",
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'This info needs to be accurate with your ID document',
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 20),
                              BlocBuilder<CountryListBloc, List<Country>>(
                                builder: (_, state) {
                                  return AppAsyncDropdownSearchField<Country>(
                                    controlName: upCountryOfResidence,
                                    labelText: 'Country',
                                    prefixIcon: Icon(Icons.flag),
                                    hintText: '',
                                    asyncItems: () async {
                                      return state;
                                    },
                                    compareFn: (item1, item2) {
                                      return item1 == item2;
                                    },
                                    initialCall:
                                        () =>
                                            context
                                                .read<CountryListBloc>()
                                                .getCountries(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(AppDimen.pagePadding),
                        margin: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: ReactiveFormConsumer(
                            builder:
                                (_, form, _) => ElevatedButton(
                                  onPressed:
                                      !form.valid
                                          ? null
                                          : () {
                                            context
                                                .read<CountryOfResidenceBloc>()
                                                .updateResidentCountry();
                                          },
                                  child: Text('Continue'),
                                ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
