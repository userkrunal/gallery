import 'package:flutter/material.dart';
import 'package:gallery/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class ImagesShower extends StatefulWidget {
  const ImagesShower({Key? key}) : super(key: key);

  @override
  State<ImagesShower> createState() => _ImagesShowerState();
}

class _ImagesShowerState extends State<ImagesShower> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<GalleryProvider>(context,listen: false);
    providerT=Provider.of<GalleryProvider>(context,listen: true);
    int i =ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.delete_forever_rounded,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert_rounded,color: Colors.black,),label: ""),
        ],

      ),
     body: Center(
       child: Container(
         height: 500,
         width: 360,
         child: PageView.builder(itemBuilder: (context, index) {
           return Image.asset("${providerF!.galleryList[index].path}",fit: BoxFit.contain,);
         },controller: PageController(initialPage: i),
         itemCount: providerT!.galleryList.length,
         ),
       ),
     )
    );
  }
}
