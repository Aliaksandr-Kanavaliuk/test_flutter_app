import 'package:flutter/material.dart';

class ArticlesAppBar implements PreferredSizeWidget {
  @override
  Size get preferredSize =>
      preferredSize.isInfinite(); //Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    //return Container(); // Your custom widget implementation.
    return AppBar(
      title: const Text(
        'Test Daily News Test',
        style: TextStyle(color: Colors.amberAccent),
      ),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            onTap: () => {}, //_onShowSavedArticlesViewTapped(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Icon(
                Icons.bookmark,
                color: Colors.amberAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
