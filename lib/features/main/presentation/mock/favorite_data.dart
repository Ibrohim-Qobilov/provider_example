import 'package:my_favorite_list_using_provider/features/main/domain/favorite_entity.dart';

final List<FavoriteEntity> favoriteData = List.generate(
  favoriteFakeData.length,
  (index) => FavoriteEntity(
    title: favoriteFakeData[index]['title'],
    subTitle: favoriteFakeData[index]['subtitle'],
  ),
);

List<Map<String, dynamic>> favoriteFakeData = [
  {
    'title': "meva",
    'subtitle': "olma",
  },
  {
    'title': "meva",
    'subtitle': "Uzum",
  },
  {
    'title': "meva",
    'subtitle': "Nok",
  },
  {
    'title': "Sabzavot",
    'subtitle': "Piyoz",
  },
  {
    'title': "Sabzavot",
    'subtitle': "kartoshka",
  },
  {
    'title': "meva",
    'subtitle': "Banan",
  },
  {
    'title': "meva",
    'subtitle': "Limon",
  },
  {
    'title': "meva",
    'subtitle': "Ananas",
  },
  {
    'title': "meva",
    'subtitle': "Mango",
  },
  {
    'title': "meva",
    'subtitle': "Laym",
  },
  {
    'title': "Ichimliklar",
    'subtitle': "Suv",
  },
  {
    'title': "Ichimliklar",
    'subtitle': "Coca Cola",
  },
  {
    'title': "Ichimliklar",
    'subtitle': "Fanta",
  },
];
