import 'package:flutter/material.dart';
import 'package:fourthapp/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 43, 106, 47),
          title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
          actions: [
            Icon(Icons.camera_alt_outlined,color: Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.search,color: Colors.white,),
            SizedBox(width: 10,),
            Icon(Icons.more_vert_outlined,color: Colors.white,),
            SizedBox(width: 10,),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
            Tab(text:'Chat', ),
            Tab(text: 'Status'),
            Tab(text: 'Call',),
        
          ]),
          ),
          body: TabBarView(children: [
            ChatScreen(),
            Center(child: Text('status'),),
            Center(child: Text('call'),),



          ]),
      
      ),
    );
  }
}