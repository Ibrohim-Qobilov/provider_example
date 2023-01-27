import 'package:flutter/material.dart';
import 'package:my_favorite_list_using_provider/features/main/domain/favorite_entity.dart';
import 'package:my_favorite_list_using_provider/features/main/presentation/mock/favorite_data.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<FavoriteEntity> _favorites = favoriteData;
  List<FavoriteEntity> get favorites => _favorites;
  final List<FavoriteEntity> _myfavorite = [];
  List<FavoriteEntity> get myFavorite => _myfavorite;

  void addToList(FavoriteEntity favoriteEntity) {
    _myfavorite.add(favoriteEntity);
    notifyListeners();
  }

  void removeFromList(FavoriteEntity favoriteModel) {
    _myfavorite.remove(favoriteModel);
    notifyListeners();
  }
}
