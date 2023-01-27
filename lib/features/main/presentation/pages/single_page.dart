import 'package:flutter/material.dart';
import 'package:my_favorite_list_using_provider/assets/colors.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/provider/favorite_provider.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/widgets/favorites_card.dart';
import 'package:provider/provider.dart';

class SinglePage extends StatefulWidget {
  const SinglePage({super.key});

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  @override
  Widget build(BuildContext context) {
    final myFavoriteList = context.watch<FavoriteProvider>().myFavorite;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(color: malachite),
        centerTitle: true,
        title: Text(
          "Sevimlilar ro'yxati: ${myFavoriteList.length}",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: myFavoriteList.isNotEmpty
            ? ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: myFavoriteList.length,
                itemBuilder: (context, index) {
                  final currentfavorite = myFavoriteList[index];
                  return FavoritesCard(
                    subTitle: currentfavorite.subTitle,
                    title: currentfavorite.title,
                    icon: IconButton(
                      onPressed: () {
                        context
                            .read<FavoriteProvider>()
                            .removeFromList(currentfavorite);
                      },
                      icon: const Icon(
                        Icons.clear,
                        size: 30,
                        color: torchRed,
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Roʻyxat boʻsh',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
      ),
    );
  }
}
