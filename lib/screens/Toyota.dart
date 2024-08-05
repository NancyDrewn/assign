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

class Toyota extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'T crown Athlete',
      description: "Toyota Crown Athlete S. A mid-size sedan with top of comfort specs including fabric seats, dual zone climate controls, armrests for both front and rear occupants, cruise control for driver's ease of driving, steering wheel controls for car settings access, cup holders, and storage compartment.",
      imageUrl: 'assets/T crown Athlete.jpg', // Replace with your image asset path
      cost: 400000,
    ),
    FordModel(
      name: 'TOYOTA ALLION',
      description: 'This is the 1.8L variant of the Allion specced with an automatic transmission gearbox, Multifunctional steering wheel, side mirror indicators, tinted rear windows, air con climate control, powered windows, and Foglights.',
      imageUrl: 'assets/Toyota Allion.jpg', // Replace with your image asset path
      cost:  410160,
    ),
    FordModel(
      name: 'TOYOTA FJ CRUISER',
      description: 'The FJ CRUISER is specced with a 5 Speed automatic transmission, side steps, Multifunctional steering wheel, reverse camera, fog lights, front & side impact curtain airbags, and keyless entry.',
      imageUrl: 'assets/Toyota FJ CRUISER.jpg', // Replace with your image asset path
      cost: 310500,),
    FordModel(
      name: 'TOYOTA RAV4',
      description: 'The Toyota RAV4 basing from its powerful Naturally Aspirated 2.4L engine producing 160 horsepower and 220Nm of torque and roof rails, it can do a lot One can carry heavy cargo and travel for long distances and the RAV4 would still handle pretty well. Fabric seats steering wheel controls, climate controls, and an android infotainment display screen complete this very reliable unit.',
      imageUrl: 'assets/Toyota RAV4.jpg', // Replace with your image asset path
      cost: 395000,
    ),
    FordModel(
      name: 'TOYOTA HARRIER',
      description: 'The Toyota Harrier is specced with an automatic transmission gearbox, powered seats, a multifunctional steering wheel, rear mounted spoiler, front & side mounted curtain airbags, and electric tailgate.',
      imageUrl: 'assets/Toyota Harrier.jpg', // Replace with your image asset path
      cost: 785000,
    ),
    // Add more models as needed
  ];
  Toyota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('TOYOTA Models'),
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