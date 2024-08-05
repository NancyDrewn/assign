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

class MercedesBenz extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'MERCEDES BENZ S400',
      description: 'The S400 is specced with Powered Nappa leather seats, head up display, 12.3" infotainment display screen, Burmester premium surround sound system, ambient lighting, 360° camera view, panoramic sunroof, analogue dashboard clock, ambient lighting, and 4 zone climate controls.',
      imageUrl: 'assets/Mercedes Benz S400.jpg', // Replace with your image asset path
      cost: 350000,
    ),
    FordModel(
      name: 'MERCEDES BENZ E400',
      description: 'The W213 Mercedes Benz, produced from 2016 and sold from 2017, is the 5th Gen of the E Klasse. This is the Convertible Spec, sharing its platform with the station wagon which was not so earlier with the W212. The 2017 being the most technologically advanced car Mercedes had made at the time puts the 2019 E400 Cabriolet way ahead of its time. The E400 uses the 3.0L M276 V6 Twin Turbo Petrol with a power rating of 362hp.',
      imageUrl: 'assets/Mercedes Benz E400.jpg', // Replace with your image asset path
      cost:  563000,
    ),
    FordModel(
      name: 'MERCEDES BENZ G63',
      description: 'The G63 AMG 5.5L V8 is specced with Powered leather seats, Multifunctional, heated tilt & telescopic steering wheel, AMG performance steering wheel, Mercedes speedtronic cruise control system, Harman Kardon premium surround sound system, Ventilated brake discs, Daytime running LED lights, Linguatronic voice control, Bi-xenon headlights with range adjustment functionality, Smartphone integration, Electronic differential locking, Anti theft alarm, AMG sports exhausts, Side impact airbags, and Engine immobilizer',
      imageUrl: 'assets/Mercedes Benz G63.jpg', // Replace with your image asset path
      cost: 315000,),
    FordModel(
      name: 'MERCEDES BENZ GLS350d',
      description: 'Mercedes Benz GLS350d specced with Airmatic suspension, powered leather seats, 4Matic All wheel drive, Harman Kardon premium sound system, push-start ignition, adaptive cruise control, panoramic sunroof, pre-safe system for anticipatory occupant protection, roof rails, Electrically folding 3rd row seats, and Linguatronic voice control system.',
      imageUrl: 'assets/Mercedes Benz GLS350d.jpg', // Replace with your image asset path
      cost: 350000,
    ),
    FordModel(
      name: 'MERCEDES BENZ E250',
      description: 'The E250 is specced with a 9 speed 9G-Tronic automatic transmission gearbox, bucket styled seats, daytime running LED lights, Multifunctional steering wheel, side mirror indicators, front & side impact curtain airbags, premium surround sound system, and tyre pressure monitoring system.',
      imageUrl: 'assets/Mercedes Benz E250.jpg', // Replace with your image asset path
      cost: 100000,
    ),
    // Add more models as needed
  ];
  MercedesBenz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('MERCEDES Models'),
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