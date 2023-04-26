import 'package:flutter/material.dart';
import 'package:gallery/model/gallery_model.dart';
import 'package:gallery/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<GalleryProvider>(context,listen: false);
    providerT=Provider.of<GalleryProvider>(context,listen: true);
    List<GalleryModel> albimList=[
      GalleryModel(name: "Animals")
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.add,color: Colors.white),
              SizedBox(width: 20),
              Icon(Icons.search,color: Colors.white),
              SizedBox(width: 20),
              Icon(Icons.more_vert_outlined,color: Colors.white),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 30,),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context, index) => Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("${providerF!.animalList[index].path}"),fit: BoxFit.fill)
                  ),
                ),
              ],
            ),itemCount: providerF!.animalList.length),
          ),
        ],
      ),
    );
  }
}
