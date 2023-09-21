import 'package:fixmygiz/profilescreen/Settings/Delete_Account/Delete_Account.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

import '../../common/constants.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'My Profile',
          style: TextStyle(color: white ),
        ),
        elevation: 1,
      ),
      body: Column(
        children: [
          ListTile(
            leading: SizedBox(
              height: size10 * 2.5,
              width: size10 * 2.5,
              child: Image.asset('images/icons/whatsapp_icon.png'),
            ),
            title: const Text('Updates on WhatsApp'),
            trailing: Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ),
          Container(
            color: primarycolor,
            width: double.infinity,
            height: 2,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DeleteAccount()  ,));
            },
            child: ListTile(
              leading: Icon(Icons.delete,size: size10*2.3,),
              title: Text('Delete Account'),
            ),
          ),
          Container(
            color: primarycolor,
            width: double.infinity,
            height: 2,
          ),
        ],
      ),
    );
  }
}
