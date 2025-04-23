import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:coin_stack/features/card/presentation/blocs/card_list_bloc.dart/card_list_bloc.dart';
import 'package:coin_stack/features/card/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  void initState() {
    super.initState();
    context.read<CardListBloc>().getList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardListBloc, List<PaymentOption>>(
      builder: (_, s) {
        return s.isEmpty
            ? Container()
            : ListView.builder(
              itemCount: s.length,
              itemBuilder: (_, i) {
                return CardItem(
                  card: s[i],
                  deleteCard: (c) {
                    setState(() {
                      s.remove(c);
                    });
                  },
                );
              },
            );
      },
    );
  }
}
