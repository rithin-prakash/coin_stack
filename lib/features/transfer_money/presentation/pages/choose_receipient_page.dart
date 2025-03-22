import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: IgnorePointer(
        ignoring: !showFab,
        child: AnimatedOpacity(
          opacity: showFab ? 1 : 0,
          duration: Duration(microseconds: 1000),
          child: FloatingActionButton(
            onPressed: () {},
            shape: CircleBorder(),
            child: Icon(Icons.qr_code_2),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose Receipient",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
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
            Expanded(
              child: ListView.builder(
                controller: listScrollController,
                itemBuilder: (_, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671116.jpg?t=st=1742637889~exp=1742641489~hmac=bc27ea8e7479df110df0322449bf3bb12a7103dbb5fe465dc08913780323a51f&w=1380',
                      ),
                    ),
                    title: Text('Name'),
                    subtitle: Text('+9874839978'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
