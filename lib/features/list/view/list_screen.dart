import 'package:flutter/material.dart';
import 'package:flutter_movie/features/list/list.dart';

class Item {
  final String title;
  final String decsription;
  final String imageUrl;
  final String date;

  Item(
      {required this.title,
      required this.decsription,
      required this.imageUrl,
      required this.date});
}

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  final _movies = [
    Item(
        title: 'Movie name',
        decsription:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
        imageUrl:
            'https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250',
        date: 'March 8, 2022'),
    Item(
        title: 'Mortal Kombat',
        decsription:
            'Washed-up MMA fighter Cole Young, unware of his heritage and that caused',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYjZmMjdlNDEtOGE0NC00MmQyLWIyNTgtMzc1NWRjYTYzMWZmXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
        date: 'April 7, 2021'),
    Item(
        title: 'Random',
        decsription:
            'Washed-up MMA fighter Cole Young, unware of his heritage and that caused',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYjZmMjdlNDEtOGE0NC00MmQyLWIyNTgtMzc1NWRjYTYzMWZmXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
        date: 'April 7, 2021'),
    Item(
        title: 'Just another movie',
        decsription:
            'Washed-up MMA fighter Cole Young, unware of his heritage and that caused',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYjZmMjdlNDEtOGE0NC00MmQyLWIyNTgtMzc1NWRjYTYzMWZmXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
        date: 'April 7, 2021'),
    Item(
        title: 'Smth new',
        decsription:
            'Washed-up MMA fighter Cole Young, unware of his heritage and that caused',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYjZmMjdlNDEtOGE0NC00MmQyLWIyNTgtMzc1NWRjYTYzMWZmXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
        date: 'April 7, 2021'),
    Item(
        title: 'Something another',
        decsription:
            'Washed-up MMA fighter Cole Young, unware of his heritage and that caused',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BYjZmMjdlNDEtOGE0NC00MmQyLWIyNTgtMzc1NWRjYTYzMWZmXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
        date: 'April 7, 2021')
  ];

  var _filteredMovies = <Item>[];

  final _searchController = TextEditingController();

  void _searchMovie() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _filteredMovies = _movies;
    _searchController.addListener(_searchMovie);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 170,
          itemBuilder: (context, index) =>
              ListCard(item: _filteredMovies[index]),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
              controller: _searchController,
              cursorColor: const Color.fromRGBO(1, 180, 228, 1),
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white.withAlpha(235),
                  contentPadding: const EdgeInsets.all(8),
                  isCollapsed: true,
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(1, 180, 228, 1))),
                  border: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(3, 37, 65, 1))))),
        )
      ],
    );
  }
}
