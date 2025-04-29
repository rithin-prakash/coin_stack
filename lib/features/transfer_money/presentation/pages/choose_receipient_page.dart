import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/txn_category_loading_shimmer.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/connected_profiles_bloc/connected_profiles_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/connected_profiles_bloc/connected_profiles_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChooseReceipientPage extends StatefulWidget {
  const ChooseReceipientPage({super.key});

  @override
  State<ChooseReceipientPage> createState() => _ChooseReceipientPageState();
}

class _ChooseReceipientPageState extends State<ChooseReceipientPage> {
  var showFab = true;
  late final ScrollController listScrollController;

  @override
  initState() {
    super.initState();
    showFab = true;
    listScrollController = ScrollController();
    listScrollController.addListener(() {
      if (listScrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (showFab == true) {
          setState(() {
            showFab = false;
          });
        }
      } else {
        if (listScrollController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (showFab == false) {
            setState(() {
              showFab = true;
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ConnectedProfilesBloc>()..getList(),
      child: Scaffold(
        appBar: AppBar(),
        floatingActionButton: IgnorePointer(
          ignoring: !showFab,
          child: AnimatedOpacity(
            opacity: showFab ? 1 : 0,
            duration: Duration(microseconds: 1000),
            child: FloatingActionButton(
              onPressed: () {
                context.navigateTo(ScanQrPageRoute());
              },
              shape: CircleBorder(),
              child: Icon(Icons.qr_code_2),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Builder(
          builder: (context) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Receipient",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Please choose your receipient to send money',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search receipient',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  BlocBuilder<ConnectedProfilesBloc, ConnectedProfilesState>(
                    builder: (_, state) {
                      if (state is ConnectedProfilesLoading) {
                        return Column(
                          spacing: 5,
                          children: [
                            TxnCategoryLoadingShimmer(),
                            TxnCategoryLoadingShimmer(),
                            TxnCategoryLoadingShimmer(),
                            TxnCategoryLoadingShimmer(),
                          ],
                        );
                      } else if (state is ConnectedProfilesLoaded) {
                        return Expanded(
                          child: ListView.separated(
                            itemCount: state.list.length,
                            separatorBuilder:
                                (context, index) => Divider(
                                  height: .3,
                                  thickness: .3,
                                  color: Colors.grey,
                                ),
                            controller: listScrollController,
                            itemBuilder: (_, i) {
                              return ListTile(
                                onTap: () {
                                  context.read<SelectProfileBloc>().select(
                                    state.list[i],
                                    null,
                                  );

                                  context.navigateTo(SelectPurposePageRoute());
                                },
                                leading: CircleAvatar(
                                  radius: 24,
                                  backgroundImage: CachedNetworkImageProvider(
                                    state.list[i].profileUrl ?? '',
                                    errorListener: (p0) {},
                                  ),
                                ),
                                title: Text(state.list[i].name),
                                subtitle: Text(state.list[i].phone),
                              );
                            },
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
