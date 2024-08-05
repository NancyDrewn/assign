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

class Audi extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'AUDI SQ5',
      description: 'Based on the Audi Q5, the SQ5 is a much powerful version of the Q5 that runs a 3.0L V6 Supercharged Petrol Engine producing 354hp and 470Nm of torque which is way higher than what the 2.0L Q5 produces. It has the Quattro All Wheel Drive system which comes in handy in delivering optimal driving experience. This is where the thrill lies!',
      imageUrl: 'assets/A sq5.jpg', // Replace with your image asset path
      cost: 565000,
    ),
    FordModel(
      name: 'Audi A5',
      description: 'It is equipped with a 7 speed dual Clucth transmission, Multifunctional steering wheel, adaptive headlights, daytime running LED lights, virtual instrument cluster, premium surround sound system, and Adaptive cruise control.',
      imageUrl: 'assets/Audi A5.jpg', // Replace with your image asset path
      cost:  416160,
    ),
    FordModel(
      name: 'AUDI A7',
      description: 'The A7 is equipped with Quattro All wheel drive system, Multifunctional steering wheel, daytime running LED lights, Premium surround sound system, digital instrument cluster, radar guided adaptive cruise control, and Blindspot monitoring assist.',
      imageUrl: 'assets/Audi A7.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'AUDI A8',
      description: 'The A8 is equipped with Quattro All wheel drive system, Multifunctional steering wheel, daytime running LED lights, Premium surround sound system, digital instrument cluster, parking assist with parking aid plus, headlight washers, absorption control, radar guided adaptive cruise control, and Blindspot monitoring assist',
      imageUrl: 'assets/Audi A8.jpg', // Replace with your image asset path
      cost: 670000,
    ),
    FordModel(
      name: 'AUDI Q5',
      description: "As the production of the 1st gen Audi Q5, Typ 8R, ended as the year 2016 elapsed, the 2nd Gen, Typ 80A, made its debut. It comes as a total redesign from the previous Typ 8R Q5 that began production in 2009. It features a range of new technologies that makes it a favourite of many Audi Consumers. A digital instrument cluster, redesigned steering wheel, dashboard, and center console with the design being more minimalistic than the previous model. Exterior designs became more sharper lowering drag coefficient. Both front and rear lights were also redesigned giving the car a much better admired fascia. It also was uprated just with the EA888 2.0L turbocharged petrol engine to 252hp and 370Nm of torque from the previous 222hp and 350Nm of torque.",
      imageUrl: 'assets/Audi Q5.jpg', // Replace with your image asset path
      cost: 420000,
    ),
    // Add more models as needed
  ];
  Audi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('AUDI Models'),
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