import 'package:flutter/material.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black45,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Colors.black,
                      child: Text('Logo'),
                    ),
                    title: Text(
                      'Digital Receipt App',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text(
                  'Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.black,
                ),
                title: Text(
                  'Employee',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.production_quantity_limits_sharp,
                  color: Colors.black,
                ),
                title: Text(
                  'Products',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.black,
                ),
                title: Text(
                  'Log Out',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
