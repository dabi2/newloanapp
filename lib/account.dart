import 'package:flutter/material.dart';

import 'package:lame/bttomBar.dart';



class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int _selectedIndex = 0;
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Personal Information',
          style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white70),
        ),
        backgroundColor: const Color(0xFF01BDB2),
      elevation: 20,
      ),
      
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: [                
                Padding(padding: EdgeInsets.only(top: 20)),                
                Padding(
                  padding: const EdgeInsets.all(8.0),                  
                  child: CircleAvatar(                    
                    radius: 50,
                    child:Icon( Icons.person, size: 50,),                    
                  ),
                  
                ),
                Padding(padding: EdgeInsets.all(8.0)),                
                Text('Hello UserName')
              ],
            ),
            height: 250,
            decoration: const BoxDecoration(
            color:Color(0xFFD9C7AE),
            
            // image: DecorationImage(image: AssetImage('assets/images/logo.png'), fit: BoxFit.cover,),                    
            ),
            width: double.infinity,  
          ),

          Padding(
            padding: const EdgeInsets.only(top:190, left: 50,right: 50,),
            child: Container(              
              padding: const EdgeInsets.all(20),         
              decoration: const BoxDecoration(
                color: Color(0xFFB19576),
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
             ),
              height: 500,            
              width: double.infinity,
              child: ListView(
                children: const [
                  Icon(Icons.edit,),
                  Text('Username Email@ PHone NUmber',style: TextStyle(color: Color(0xFF02706B),fontWeight: FontWeight.w900),),
                  Icon(Icons.edit,),
                  Text('NAme'),
                  Icon(Icons.edit,),
                  Text('NAme'),
                  Icon(Icons.edit,),
                  Text('NAme'),
                  ],
              )
            ),

          ),
        
      ]
      ),
           bottomNavigationBar: BottomNavigationBarCustom(
          onItemTapped: _onItemTapped,
          selectedIndex: _selectedIndex,
    ),
    );


  }
  
}
