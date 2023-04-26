import 'package:flutter/material.dart';
import 'package:gallery/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerT=Provider.of<GalleryProvider>(context,listen: true);
    providerF=Provider.of<GalleryProvider>(context,listen: false);
    return Scaffold(
      body: Column(
        children: [
         Expanded(
           child: ListView.builder(itemBuilder: (context, index) => Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 400,
               width: 360,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                   image: AssetImage("${providerF!.showList[index].path}"),
                   fit: BoxFit.fill
                 )
               ),
             ),
           ),itemCount: providerF!.showList.length,),
         )
        ],
      ),
    );
  }
}
