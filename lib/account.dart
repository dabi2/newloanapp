import 'package:flutter/material.dart';


class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        backgroundColor: const Color(0xFF01BDB2),
      elevation: 20,
      ),
      
      body: Stack(
        children: <Widget>[
          Container(
            height: 35,
            decoration: const BoxDecoration(
            color:Color(0xFF01BDB2),
            // image: DecorationImage(image: AssetImage('assets/images/logo.png'), fit: BoxFit.cover,),                    
            ),      
            width: double.infinity,           
          ),

          Padding(
            padding: const EdgeInsets.only(top:80, left: 50,right: 50,),
            child: Container(
             decoration: const BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
             ),
              height: 80,            
              width: double.infinity,
              child: ListView(
                children: [
                  buildEditableRow('Father\'s Name', Icons.edit),
                  buildEditableRow('Full Name', Icons.edit),
                  buildEditableRow('Email', Icons.edit),
                  buildEditableRow('Date of Birth', Icons.calendar_today),
                  buildEditableRow('Mobile Number', Icons.edit),
                  buildEditableRow('Pan Number', Icons.edit),
                  buildEditableRow(
                    'Account Number',
                    editButtonText: 'Request for Edit',
                    Icons.edit,
                  
                ],
              )
            ),
          ),
        
      ]
      ),
    );
  }
}
