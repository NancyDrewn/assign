import 'package:flutter/material.dart';

// Define a class to hold information about each Ford model
class FordModel {
  final String name;
  final String description;
  final String imageUrl;
  final int cost; // Assuming cost is in dollars

  FordModel({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.cost,
  });
}

class Bmw extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'BMW M5',
      description: "The M5 F90 COMPETITION is specced with Powered seats, Multifunctional tilt & telescopic steering wheel, Adaptive headlights, Harman Kardon premium surround sound system, Gesture controls, Keyless entry, Side impact airbags, Parking sensors, and multiple ambient lighting color options.",
      imageUrl: 'assets/BMW M5.jpg', // Replace with your image asset path
      cost: 456000,
    ),
    FordModel(
      name: 'BMW M340i',
      description: "The BMW M340i G20 is specced with Multifunctional steering wheel, adaptive LED lights, Harman Kardon premium surround sound system, active kidney grills, head up display, and traction control.",
      imageUrl: 'assets/BMW M340i.jpg', // Replace with your image asset path
      cost:  678160,
    ),
    FordModel(
      name: 'BMW X5',
      description: "This G05 Gen BMW X5 XDrive 35d is specced with powered tan leather seats, an air suspension setup, an updated iDrive infotainment system, Harman Kardon premium surround sound system, roof rails, hill descent assist, 360° camera view, and tyre pressure monitoring system.",
      imageUrl: 'assets/BMW X5.jpg', // Replace with your image asset path
      cost: 315080,),
    FordModel(
      name: 'BMW 540i',
      description: 'The BMW 540i G30 M-Sport XDrive is specced with Multifunctional steering wheel, adaptive LED lights, Harman Kardon premium surround sound system, active kidney grills, head up display, and traction control.',
      imageUrl: 'assets/BMW 540i.jpg', // Replace with your image asset path
      cost: 895000,
    ),
    FordModel(
      name: 'BMW 340i',
      description: "The BMW 340i F30 is specced with Multifunctional steering wheel, adaptive LED lights, Harman Kardon premium surround sound system, and traction control.",
      imageUrl: 'assets/BMW 340i.jpg', // Replace with your image asset path
      cost: 675000,
    ),
    // Add more models as needed
  ];
  Bmw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('BMW models'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: fordModels.length,
        itemBuilder: (context, index) {
          return Container(
            height: imageHeight,
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      fordModels[index].imageUrl,
                      width: MediaQuery.of(context).size.width, // Full width
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  fordModels[index].name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(fordModels[index].description),
                Text('Cost: \$${fordModels[index].cost}'),
              ],
            ),
          );
        },
      ),
    );
  }
}