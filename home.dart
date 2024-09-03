


import 'package:flutter/material.dart';
import 'package:spotify_app/models/category.dart';
import 'package:spotify_app/models/music.dart';
import 'package:spotify_app/services/category_operations.dart';
import 'package:spotify_app/services/music_operations.dart';


// ignore: must_be_immutable
class Home  extends StatelessWidget {
  Function _miniPlayer;

  Home(this._miniPlayer); //dart constructor short hand
  //const Home ({super.key});
  
   Widget createCategory(Category category) {
    return Container(
        color: Colors.blueGrey.shade400,
        child: Row(
          children: [
            Image.network(category.imageURL, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                category.name,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }

 List<Widget> createListOfCategories() {
    List<Category> categoryList =
        CategoryOperations.getCategories(); // Rec Data
    // Convert Data to Widget Using map function
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }



  
  Widget createMusic(Music music){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            width: 200,
            child: InkWell(
              onTap: (){
                _miniPlayer(music, stop:true);
              },
              child: Image.network(
                music.image , 
                fit:BoxFit.cover,
                ),
            ),
          ),
          Text(music.name, style: TextStyle(color: Colors.white),),
          Text(music.desc , style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
  Widget createMusicList(String label){
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text( label, 
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          Container(
          height: 200,
          child: ListView.builder(
            //padding: EdgeInsets.all(5),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx , index){
              return createMusic(musicList[index]
              );
          },
            itemCount: musicList.length ,
            ),
        )],
      ),
    );
 }


  Widget createGrid() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 280,
      child: GridView.count(
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
      ),
    );
  }

  
  Widget createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message ,  style: TextStyle(color: Colors.white),), // Set text color to white),
      actions: [Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(color: Colors.white , Icons.settings))],
    );
  }
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: SafeArea(
        child: Container( // container single child hai 
          child: Column(children: [
            createAppBar('Good Morning'), 
            SizedBox(
              height: 5,
            ),
            createGrid(),
            createMusicList('Made for You'),
            createMusicList('Popular PlayList')
          ],), // column multipple child hai 
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueGrey.shade300, 
              //Colors.black ,
              //Colors.black , 
              Colors.black,], 
              begin: Alignment.topLeft , 
              end: Alignment.bottomRight , stops: [0.1 , 0.3]
              ) ),
          //color: Colors.orange,
        ),
      ),
    );
  }
}
