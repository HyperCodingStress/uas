import 'package:flutter/material.dart';
import 'package:uas/Component/custom_list.dart';

class MenuMusic extends StatefulWidget {
  const MenuMusic({Key? key}) : super(key: key);

  @override
  State<MenuMusic> createState() => _MenuMusicState();
}

class _MenuMusicState extends State<MenuMusic> {

  List musicList = [
    {
      'judul':"Driving Ambition",
      'penyanyi':"Ahjay Stelino",
      'url':"https://assets.mixkit.co/music/preview/mixkit-driving-ambition-32.mp3",
      'cover':"../assets/Playloop_text.png"
    },
    {
      'judul':"Driving Ambition 2",
      'penyanyi':"Ahjay Stelino 2",
      'url':"https://assets.mixkit.co/music/preview/mixkit-driving-ambition-32.mp3",
      'cover':"https://pngimg.com/uploads/music_notes/music_notes_PNG8.png"
    },
    {
      'judul':"Driving Ambition 3",
      'penyanyi':"Ahjay Stelino 3r",
      'url':"https://assets.mixkit.co/music/preview/mixkit-driving-ambition-32.mp3",
      'cover':"../assets/Playloop_text.png"
    },
    {
      'judul':"Driving Ambition 4",
      'penyanyi':"Ahjay Stelino 4",
      'url':"https://assets.mixkit.co/music/preview/mixkit-driving-ambition-32.mp3",
      'cover':"https://pngimg.com/uploads/music_notes/music_notes_PNG8.png"
    },
  ];

  String CurrentTittle= "";
  String CurrentCover = "";
  String CurrentSinger = "";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(221, 22, 224, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(221, 22, 224, 1),
        title: Text("My Playlist" , style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
            itemCount: musicList.length,
              itemBuilder: (context,index) => customList(
                onTap: (){
                  setState(() {
                    CurrentTittle: musicList[index]['judul'];
                    CurrentCover: musicList[index]['cover'];
                    CurrentSinger: musicList[index]['penyanyi'];
                     });
                },
                judul: musicList[index]['judul'],
                penyanyi: musicList[index]['penyanyi'],
                cover: musicList[index]['cover'],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Color(0x55212121),
                  blurRadius: 8.0
                ),
              ],
            ),
            child: Column(
              children: [
                Slider.adaptive(
                  value: 0.0,
                    onChanged: (value){},
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,left: 12.0,right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                              image: NetworkImage(CurrentCover),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(CurrentTittle,style: TextStyle(
                              color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5.0,),
                            Text(CurrentSinger,style: TextStyle(color: Colors.black,fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                          icon: Icon(Icons.play_arrow),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
