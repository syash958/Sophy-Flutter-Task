import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:photo_view/photo_view.dart';
class TaskHome extends StatefulWidget {
  const TaskHome({Key key}) : super(key: key);

  @override
  _TaskHomeState createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  final imageList = [
    "lib/images/Mask Group-1.png",
  ];
  final imageList1 = [
    "lib/images/Mask Group-3.png",
    'lib/images/Mask Group.png',
  ];
  final titleList1=[
    "Drawing Room",
    "Dinning Room"
  ];
  String title1;
  final imageList2 = [
    "lib/images/Mask Group-4.png",
    'lib/images/Mask Group-5.png',
    "lib/images/Mask Group-7.png",
    'lib/images/Mask Group-6.png',
  ];
  final title2=[
    "Offices",
    "Restraunts",
    "Hotels",
    "Clinic"
  ];
  @override
  void initState() {
    // for(int i=0;i<titleList1.length;i++){
    //   title1=titleList1[i];
    // }
    title1=titleList1[0];
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text("TKS Homes",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(icon: Icon(Icons.drag_handle,color: Colors.orange,), onPressed: (){})
        ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(Icons.search,color: CupertinoColors.activeOrange,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.black,
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      color: Colors.black,
                      height: double.maxFinite,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      width: double.maxFinite,
                      child: PhotoViewGallery.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageList.length,
                        builder: (context, index) {
                          return PhotoViewGalleryPageOptions(
                            imageProvider: AssetImage(
                              imageList[index],
                            ),
                            minScale: PhotoViewComputedScale.contained * 0.8,
                            maxScale: PhotoViewComputedScale.covered * 2,
                          );
                        },
                        scrollPhysics: BouncingScrollPhysics(),
                        backgroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                         color: CupertinoColors.black
                          // color: Theme.of(context).canvasColor,
                        ),
                        enableRotation: true,

                        loadingBuilder: (context, event) => Center(
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.orange,
                              value: event == null
                                  ? 0
                                  : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 15,right: 25),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topRight,
                      child: Text("Premium",style: TextStyle(
                          color: Colors.black,backgroundColor: Colors.pink[200]),softWrap: true,),

                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Residential Interior",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: TextButton.icon(
                      icon: Icon(Icons.arrow_forward_rounded,color: Colors.orange,),
                      label: Text("See All",style: TextStyle(
                          color: Colors.orange,
                        ),
                        ),
                        onPressed: null,),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.black,
                    width: double.maxFinite,
                    height: 250,
                    child: Container(
                      color: Colors.black,
                      height: double.maxFinite,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      width: MediaQuery.of(context).size.width/1.2,
                      child: PhotoViewGallery.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageList1.length,
                        builder: (context, index) {
                          return PhotoViewGalleryPageOptions(
                            imageProvider: AssetImage(
                              imageList1[index],
                            ),
                            minScale: PhotoViewComputedScale.contained * 0.8,
                            maxScale: PhotoViewComputedScale.covered * 2,
                          );

                        },
                        scrollPhysics: BouncingScrollPhysics(),
                        backgroundDecoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: CupertinoColors.black
                          // color: Theme.of(context).canvasColor,
                        ),
                        enableRotation: true,
                        loadingBuilder: (context, event) => Center(
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.orange,
                              value: event == null
                                  ? 0
                                  : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                            ),
                          ),
                        ),
                        onPageChanged: (index){
                          setState(() {
                            title1=titleList1[index];
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 150,right: 25),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(title1,style: TextStyle(
                        color: Colors.white,),softWrap: true,),
                  ),

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Commercial Interior",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: TextButton.icon(
                      icon: Icon(Icons.arrow_forward_rounded,color: Colors.orange,),
                      label: Text("See All",style: TextStyle(
                        color: Colors.orange,
                      ),
                      ),
                      onPressed: null,),
                  ),

                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.black,
                width: double.maxFinite,
                height: 400,
                child: GridView.builder(
                  itemCount: imageList2.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 4.0
                  ),
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      color: Colors.blueGrey[900],
                        child: GridTile(
                          footer: Text(title2[index],style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                          child: Image.asset(imageList2[index]),
                        )
                    //
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Testimonials",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(8),
                height: 100,
                width: 500,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.orange),
                    left: BorderSide(width: 1.0, color: Colors.orange),
                    right: BorderSide(width: 1.0, color: Colors.orange),
                    bottom: BorderSide(width: 1.0, color: Colors.orange),
                  ),
                ),
                child: ListView.builder(
                   itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,int index){
                    return SizedBox(
                      width: 200,
                      child: ListTile(
                        //   shape: OutlineInputBorder(
                        //     borderSide: BorderSide(width: 1.0,color: Colors.orange),
                        //     borderRadius: BorderRadius.circular(5.0),
                        // ),
                        leading: CircleAvatar(child: Image.asset('lib/images/Mask Group.png'),),
                        title: Text("Name",style: TextStyle(color: Colors.white),),
                        isThreeLine: true,
                        subtitle: Text("loreusmm dolor sit amet ",style: TextStyle(color: Colors.white),),
                      ),
                    );
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,bottom: 5),
                width: MediaQuery.of(context).size.width / 1.3,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                //  color: Colors.orange,
                child: MaterialButton(
                  child: Text(
                    "Book Design Consultation",
                    style: TextStyle(color: Colors.white,),
                  ),
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TaskHome()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
