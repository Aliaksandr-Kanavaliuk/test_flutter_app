import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar() : super();

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Test Daily News Test',
        style: TextStyle(color: Colors.blueAccent),
      ),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            onTap: () => {}, //_onShowSavedArticlesViewTapped(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Icon(
                Icons.bookmark,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
