import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<GalleryProvider>(context,listen: false);
    providerT=Provider.of<GalleryProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: (value) {
          providerF!.selectscreen(value);
        },
        currentIndex: providerT!.seliindex,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo_library_outlined,color: Colors.white),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_add_outlined,color: Colors.white),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.auto_stories,color: Colors.white),label: ""),
        ],
      ),
      body: providerT!.screen[providerT!.seliindex],
    ));
  }
}
