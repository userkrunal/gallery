import 'package:flutter/material.dart';
import 'package:gallery/model/gallery_model.dart';
import 'package:gallery/view/album_screen.dart';
import 'package:gallery/view/gallery.dart';
import 'package:gallery/view/stories.dart';

class GalleryProvider extends ChangeNotifier
{

  List<Widget>screen=[
    GalleryScreen(),
    AlbumScreen(),
    StoriesScreen(),
  ];


  int seliindex=0;
  void selectscreen(int index)
  {
    seliindex=index;
    notifyListeners();
  }
  List galleryList = [
    GalleryModel(path: "assets/images/img.png"),
    GalleryModel(path: "assets/images/img_1.png"),
    GalleryModel(path: "assets/images/img_2.png"),
    GalleryModel(path: "assets/images/img_3.png"),
    GalleryModel(path: "assets/images/img_4.png"),
    GalleryModel(path: "assets/images/img_5.png"),
    GalleryModel(path: "assets/images/img_6.png"),
    GalleryModel(path: "assets/images/img_7.png"),
    GalleryModel(path: "assets/images/img_8.png"),
    GalleryModel(path: "assets/images/img_9.png"),
    GalleryModel(path: "assets/images/img_10.png"),
    GalleryModel(path: "assets/images/img_11.png"),
    GalleryModel(path: "assets/images/img_12.png"),
    GalleryModel(path: "assets/images/img_13.png"),
    GalleryModel(path: "assets/images/img_14.png"),
    GalleryModel(path: "assets/images/img_15.png"),
    GalleryModel(path: "assets/images/img_16.png"),
    GalleryModel(path: "assets/images/img_17.png"),
    GalleryModel(path: "assets/images/img_18.png"),
    GalleryModel(path: "assets/images/img_19.png"),
    GalleryModel(path: "assets/images/img_20.png"),
    GalleryModel(path: "assets/images/img_21.png"),
    GalleryModel(path: "assets/images/img_22.png"),
    GalleryModel(path: "assets/images/img_23.png"),
    GalleryModel(path: "assets/images/img_24.png"),
    GalleryModel(path: "assets/images/img_25.png"),
    GalleryModel(path: "assets/images/img_26.png"),
    GalleryModel(path: "assets/images/img_27.png"),
    GalleryModel(path: "assets/images/img_28.png"),
    GalleryModel(path: "assets/images/img_29.png"),
    GalleryModel(path: "assets/images/img_30.png"),
    GalleryModel(path: "assets/images/img_31.png"),
    GalleryModel(path: "assets/images/img_32.png"),
    GalleryModel(path: "assets/images/img_33.png"),
    GalleryModel(path: "assets/images/img_34.png"),
  ];

  List animalList=[
    GalleryModel(path: "assets/images/img_16.png"),
    GalleryModel(path: "assets/images/img_17.png"),
    GalleryModel(path: "assets/images/img_18.png"),
    GalleryModel(path: "assets/images/img_19.png"),
    GalleryModel(path: "assets/images/img_20.png"),
    GalleryModel(path: "assets/images/img_21.png"),
    GalleryModel(path: "assets/images/img_22.png"),
    GalleryModel(path: "assets/images/img_23.png"),
    GalleryModel(path: "assets/images/img_24.png"),
    GalleryModel(path: "assets/images/img_25.png"),
  ];
  List carList=[
    GalleryModel(path: "assets/images/img_27.png"),
    GalleryModel(path: "assets/images/img_28.png"),
    GalleryModel(path: "assets/images/img_29.png"),
    GalleryModel(path: "assets/images/img_30.png"),
    GalleryModel(path: "assets/images/img_31.png"),
    GalleryModel(path: "assets/images/img_32.png"),
    GalleryModel(path: "assets/images/img_33.png"),
    GalleryModel(path: "assets/images/img_34.png"),
  ];
  List showList=[
    GalleryModel(path: "assets/images/img_1.png"),
    GalleryModel(path: "assets/images/img_2.png"),
   GalleryModel(path: "assets/images/img_3.png"),
   GalleryModel(path: "assets/images/img_4.png"),
   GalleryModel(path: "assets/images/img_5.png"),
  ];

}