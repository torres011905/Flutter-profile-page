import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData (
        primarySwatch: Colors.blue,
    ),
    home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey [100],
      appBar: AppBar (
        title: Text ('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child:Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //profile picture
            Container (
              width:160,
              height:160,
              decoration: BoxDecoration (
                shape: BoxShape.circle,
                border: Border.all (
                  color: Colors.blue,
                  width:4,
                ),
                boxShadow :[
                  BoxShadow (
                    color:Colors.black26,
                    blurRadius : 10,
                    offset : Offset (0,5),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://picsum.photos/300/300?random=person',
                  width:160,
                  height: 160,
                  fit: BoxFit.cover
                ),
              ),
            ),
            //name
            SizedBox(height:20),
            Text(
              'Ivy Torres',
                  style:TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Colors.black87,


            )
            ),

            //jop title/subtitle

            SizedBox(height: 8 ),
            Text(
              'System Analyst',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontWeight: FontWeight.w500,

            ),
            ),

            //About me section
            SizedBox(height:30),
            Container(
              padding: EdgeInsets.all(20),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0,3),
                  ),
                ],
                ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Program Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      ' I am a future system analyst',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}