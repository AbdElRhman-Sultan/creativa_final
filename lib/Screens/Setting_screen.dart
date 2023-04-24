import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}
bool iconBool= false;
IconData iconLight = Icons.wb_sunny;
IconData iconDark = Icons.nights_stay;

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.orange,
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _SettingScreenState extends State<SettingScreen> {
  bool _isNotificationEnabled = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: iconBool? darkTheme: lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Setting",style: GoogleFonts.badScript(fontSize:30,color: Colors.white),),
          actions: [
            IconButton(onPressed: (){
              setState(() {
                iconBool = ! iconBool;
              });
            },
                icon: Icon(iconBool ? iconDark: iconLight),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SwitchListTile(
                title: Text('Enable Notifications'),
                activeColor: Colors.indigo,
                value: _isNotificationEnabled,
                onChanged: (bool value) {
                  setState(() {
                    _isNotificationEnabled = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Privacy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              ListTile(
                title: Text('Change Password'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  // Navigate to change password page
                },
              ),
              ListTile(
                title: Text('Delete Account'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

