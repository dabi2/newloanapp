import 'package:flutter/material.dart';
import 'package:lame/bttomBar.dart';
import 'package:lame/Colors/Colors.dart';

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

  String UserName = "john Doe";
  DateTime? dateOfBirth;
  // update date of birth
  void _updateDateOfBirth(DateTime selectedDate) {
    setState(() {
      dateOfBirth = selectedDate;
    });

    print("Date of Birth updated: $selectedDate");
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
        title: const Text(
          'Personal Information',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white70),
        ),
        backgroundColor:MainColors.darkColor,

      ),
      body: Stack(children: <Widget>[
        Container(
          child: const Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text('Hello UserName')
            ],
          ),
          height: 250,
          decoration: const BoxDecoration(
            color: Color(0xFFD9C7AE),

            // image: DecorationImage(image: AssetImage('assets/images/logo.png'), fit: BoxFit.cover,),
          ),
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 190,
            left: 50,
            right: 50,
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Color(0xFFB19576),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            height: 500,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'User NAme: $UserName',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    const Text(
                      'Date Of Birth:',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    if (dateOfBirth != null)
                      Text(
                        "${dateOfBirth!.toLocal()}".split(' ')[0],
                        style: const TextStyle(fontSize: 10),
                      ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () async {
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: dateOfBirth ?? DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                        );
                        if (selectedDate != null) {
                          _updateDateOfBirth(selectedDate);
                        }
                      },
                      child: Icon(Icons.calendar_month_outlined),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Text(
                      'Email: $UserName',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Text(
                      'Account Number: $UserName',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Text(
                      'Email: $UserName',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Text(
                      'Pancard: $UserName',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Text(
                      'Pancard: $UserName',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBarCustom(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
