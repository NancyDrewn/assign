import 'package:flutter/material.dart';
import 'package:project_assn/screens/Audi.dart';
import 'package:project_assn/screens/Chevrolet.dart';
import 'package:project_assn/screens/Ford.dart';
import 'package:project_assn/screens/Honda.dart';
import 'package:project_assn/screens/Mercedes_benz_screen.dart';
import 'package:project_assn/screens/Nissan.dart';
import 'package:project_assn/screens/Toyota.dart';
import 'package:project_assn/screens/VolksWagen.dart';
import 'package:project_assn/screens/Volvo.dart';
import 'package:project_assn/screens/bmw.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('DreamCars Dealers Company'),
        centerTitle:true,
        backgroundColor:Colors.blueGrey,
        foregroundColor: Colors.black,
      ),
      // body:Center(
      //   child:ClipOval(
      //
      //       child:Image.asset(
      //         'assets/',
      //       width: 400,
      //       height:400,
      //      fit: BoxFit.cover ,
      //
      //    )
      //   ),
    //
    // // ),// ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
        DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Text(
          'Brands offerd here',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),


            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(

                leading: Icon(Icons.car_rental),
                title: Text('Mercedes Benz'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MercedesBenz()),
                  );
                },
              ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('Audi'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Audi()),
                );
              },
            ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('VolksWagen'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VolksWagen()),
                );
              },
            ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('BMW'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bmw()),
                );
              },
            ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('Toyota'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Toyota()),
                );
              },
            ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('Volvo'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Volvo()),
                );
              },
            ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('Ford'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ford()),

                );
              },
            ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('Chevrolet'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chevrolet()),
                );
              },
            ),ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('Nissan'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Nissan()),
                );
              },
            ),
            ListTile(

              leading: Icon(Icons.car_rental),
              title: Text('Honda'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Honda()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/KEYS.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'we got you covered for any car and any brand you like',
                  style: TextStyle(
                    color: Colors.white, // Ensure the text is visible over the image
                    fontSize: 18,
                    backgroundColor: Colors.black.withOpacity(1.0), // Optional: for better readability
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Facebook Icon

                    // Twitter Icon

                    // Instagram Icon

                    // Phone Icon with Number
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          // Add phone functionality here
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'You can reach us through 0778996154',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
