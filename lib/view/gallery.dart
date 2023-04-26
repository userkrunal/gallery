import 'package:flutter/material.dart';
import 'package:gallery/provider/gallery_provider.dart';
import 'package:provider/provider.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  GalleryProvider? providerF;
  GalleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<GalleryProvider>(context,listen: false);
    providerT=Provider.of<GalleryProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pictures",style: TextStyle(fontSize: 35,color: Colors.white)),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.cloud_queue,color: Colors.white,size: 30),
              SizedBox(width: 20),
              Icon(Icons.search,color: Colors.white,size: 30),
              SizedBox(width: 20),
              Icon(Icons.more_vert_outlined,color: Colors.white,size: 30),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
             Text("Today",style: TextStyle(color: Colors.white))
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
            ), itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'show',arguments: index);
              },
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset("${providerF!.galleryList[index].path}",fit: BoxFit.cover),
              ),
            ),itemCount: providerF!.galleryList.length,),
          ),
        ],
      ),
    ),
    );
  }
}
