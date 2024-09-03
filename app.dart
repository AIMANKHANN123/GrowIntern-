




import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/models/music.dart';
import 'package:spotify_app/screens/home.dart';
import 'package:spotify_app/screens/search.dart';
import 'package:spotify_app/screens/yourlibrary.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _MyAppState createState() => _MyAppState();
}


  
  // ye wala section create wala data rakhyga 

class _MyAppState extends State<MyApp> { //ye section UI banayega

  AudioPlayer _audioPlayer = new AudioPlayer();
  var Tabs = []; 
  int currentTabIndex = 0 ;
  bool isPlaying = false;
  Music?  music;

  Widget miniPlayer(Music? music , {bool stop=false}){
    this.music = music;
    if (music == null){
      return SizedBox();
    }
    if(stop){
      isPlaying = false ;
      _audioPlayer.stop();

    }
    setState(() {});

    Size  deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(milliseconds: 500),
    color: Colors.blueGrey,
    width: deviceSize.width ,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Image.network( music.image,fit: BoxFit.cover),
      Text(music.name ,
       style: TextStyle(color: Colors.white, fontSize:20 ),
      ),
       IconButton(
              onPressed: () async {
                isPlaying = !isPlaying;
                if (isPlaying) {
                  //var audioURL = music.audioURL;
                  await _audioPlayer.play(music.audioURL as Source);
                } else {
                  await _audioPlayer.pause();
                }
                setState(() {});
        }, 
      icon: isPlaying
                  ? Icon(Icons.pause, color: Colors.white)
                  : Icon(Icons.play_arrow, color: Colors.white))
       
    ],) ,
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [Home(miniPlayer), Search() , YourLibrary()];
  }
  //UI Design Code Goes Inside Build 
  @override
  Widget build(BuildContext context) {  
    print("Let's Build it"); //ismai sirf aik hi index par rhyga agay dusry index par jata howa nazar nah ayega
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          miniPlayer(music),
           BottomNavigationBar(
          
          currentIndex: currentTabIndex,
          onTap: (currentIndex){
            print("Current Index is $currentIndex");
            currentTabIndex = currentIndex;
            setState(() { //rerender 
            });
          },
         
          selectedItemColor: Colors.white ,
          selectedLabelStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.black45,
          items: [
        
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home, color:Colors.white), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color:Colors.white), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books , color:Colors.white), label: 'Your Library')
          ],
          
          )],
      ) ,
    );
  }
}


