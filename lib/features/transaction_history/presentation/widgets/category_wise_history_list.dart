import 'package:flutter/material.dart';

class CategoryWiseHistoryList extends StatelessWidget {
  const CategoryWiseHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 18),
        Text('Spending List', style: Theme.of(context).textTheme.titleLarge),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 50,
          separatorBuilder: (context, index) {
            return Divider(color: Colors.grey.shade400);
          },
          itemBuilder: (_, i) {
            return ListTile(
              titleTextStyle: Theme.of(context).textTheme.titleMedium,
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/407px-Netflix_icon.svg.png',
                ),
              ),
              title: Text('Netflix'),
              subtitle: Text('1st Jan 7:20pm'),
              trailing: Text(
                "-\$500",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.red),
              ),
            );
          },
        ),
      ],
    );
  }
}
