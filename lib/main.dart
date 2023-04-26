import 'package:flutter/material.dart';
import 'package:gallery/provider/gallery_provider.dart';
import 'package:gallery/view/gallery.dart';
import 'package:gallery/view/gallery_home_screen.dart';
import 'package:gallery/view/imgshow.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GalleryProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>HomeScreen(),
          'show':(context) => ImagesShower(),
        },
      ),
    ),
  );
}