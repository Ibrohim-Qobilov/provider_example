import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_favorite_list_using_provider/assets/colors.dart';
import 'package:my_favorite_list_using_provider/assets/constants/icons.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/pages/single_page.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/provider/favorite_provider.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/widgets/favorites_card.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var favorite = context.watch<FavoriteProvider>().favorites;
    var myFavorite = context.watch<FavoriteProvider>().myFavorite;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Sevimlilar ro'yxati",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      floatingActionButton: InkWell(
        onTap: myFavorite.isNotEmpty
            ? () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SinglePage()));
              }
            : null,
        child: Stack(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration:
                  const BoxDecoration(color: malachite, shape: BoxShape.circle),
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                AppIcons.saving,
              ),
            ),
            myFavorite.isNotEmpty
                ? Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: malachite),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          myFavorite.length.toString(),
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: favorite.length,
          itemBuilder: (context, index) {
            final currentfavorite = favorite[index];
            return FavoritesCard(
                title: currentfavorite.title,
                subTitle: currentfavorite.subTitle,
                icon: IconButton(
                  onPressed: () {
                    if (!myFavorite.contains(currentfavorite)) {
                      context
                          .read<FavoriteProvider>()
                          .addToList(currentfavorite);
                    } else {
                      context
                          .read<FavoriteProvider>()
                          .removeFromList(currentfavorite);
                    }
                  },
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                    color: myFavorite.contains(currentfavorite)
                        ? torchRed
                        : nobel,
                  ),
                ));
          },
        ),
      ),
    );
  }
}

