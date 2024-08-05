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

class VolksWagen extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'VOLKSWAGEN GOLF GTI',
      description: 'The MK7.5 GTI with DCC(Dynamic Chassis Control) PACKAGE is specced with an uprated 3rd Gen EA888 engine, Multifunctional tilt and telescopic steering wheel, side mirror indicators, premium surround sound system, digital instrument cluster, and traction control.',
      imageUrl: 'assets/Volkswagen Golf GTI.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'VOLKSWAGEN PASSAT',
      description: "This is one of the cleanest Volkswagen Passat in the market. Rarely used, excellently maintained, and in excellent shape in all aspects. It runs a 2.0L NA petrol engine with a power rating of 115hp. Its seats are in perfect condition, made of fabric materials, and all its mechanical aspects also in great running state.",
      imageUrl: 'assets/V Passat.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'VOLKSWAGEN TIGUAN',
      description: "Volkswagen Tiguan has been, overally, the best selling SUV in the Volkswagen Group, with over 900,000 units being produced in 2019 alone. It is an excellent compact crossover with the best offer from this car being the efficiency of the 2.0L TSI engine with a power rating of 197hp and consuming excellently.",
      imageUrl: 'assets/V tiguan.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'VOLKSWAGEN GOLF R',
      description: 'The facelift of the MK7, MK7.5, with a new digital instrument cluster and an uprated engine with the Dynamic Chassis Control system that controls the driving especially in Sports Mode. It also features a heated front seats, launch control, HALDEX based 4MOTION all wheel drive, side mirror indicators, Dynaudio premium surround sound system, and Adaptive cruise control.',
      imageUrl: 'assets/Volkswagen Golf R.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'VOLKSWAGEN TOUREG',
      description: 'The 1st Gen of Touareg was first produced in 2002 and straight up won several awards for its among it for being the best in the 4×4 car category. It shares a lot of parts with the Cayenne and has it engine equipped with a 3.6L Petrol V6 engine. This is a go-to car for someone who wants to use it for several purposes including offroading and for urban setups.',
      imageUrl: 'assets/Volkswagen Touareg.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  VolksWagen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('VOLKSWAGEN Models'),
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