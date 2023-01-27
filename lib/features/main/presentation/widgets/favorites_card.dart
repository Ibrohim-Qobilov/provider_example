import 'package:flutter/material.dart';
import 'package:my_favorite_list_using_provider/assets/colors.dart';

class FavoritesCard extends StatelessWidget {
  const FavoritesCard({
    super.key,
    required this.subTitle,
    required this.title,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: malachite, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(subTitle,
                      style: Theme.of(context).textTheme.bodyMedium!),
                ],
              ),
              const Spacer(),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}
