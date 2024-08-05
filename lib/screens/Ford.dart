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

class Ford extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'FORD ESCAPE LIMITED',
      description: 'The 2nd gen of Ford Escape was produced between 2007 and 2012 before the beginning of the 3rd generation that made a huge leap on its design. It is powered by a 2.5L Duratec Inline-4 petrol engine and gets to come with a sunroof as part of its equipments. Leather seats, locking differentials, and an interior wood trim are among its specs!',
      imageUrl: 'assets/Ford Escape Limited.jpg', // Replace with your image asset path
      cost: 350000,
    ),
    FordModel(
      name: 'FORD MUSTANG GT 5.0 V8',
      description: 'The Ford Mustang GT Soft Top Convertible is specced with Rear wheel drive, Daytime running LED lights, Bluetooth integration, Multifunctional steering wheels, Dynamic stability control, Cruise control, Engine immobilizer, Front & side impact curtain airbags, Antilock braking system (ABS), and Traction control.',
      imageUrl: 'assets/Ford Mustang GT 5.0 V8.jpg', // Replace with your image asset path
      cost:  820020,
    ),
    FordModel(
      name: 'FORD RANGER',
      description: 'One of the great builds every Ford deserves! Aftermakert modifications done on this car makes it the best aftermarket mod car. The highlight is a stage one tune to the 3.2L 6 speed auto with a DPF & EGR delete which gives it a rating of 250hp and 500Nm of Torque. Some more specs done on this car include a Pioneer underseat subwoofer, Straight pipe, BF goodrich, Forged Fuel Custom rims including spare Custom sidesteps, bullbars Wheel arches, Ironman Lift kit suspension, Ironman lights, Chameleon tint, Led bar light, and Tuffcap boot cover.',
      imageUrl: 'assets/Ford Ranger.jpg', // Replace with your image asset path
      cost: 459000,),
    FordModel(
      name: 'FORD RANGER 2.2L',
      description: 'One of the best comfort plus offroad car in a very sophisticated design that is an eyecatcher at a glance. Offroading tires, side steps, offroad modes, comfortable rides, and leather seats on the interior, and a high torque 2.2L turbocharged diesel engine.',
      imageUrl: 'assets/Ford Ranger Limited 2.2L.jpg', // Replace with your image asset path
      cost: 450300,
    ),
    FordModel(
      name: 'FORD RANGER 3.2L(RRPTOR KITTED)',
      description: 'Engineered by Ford of Australia, Ford Ranger T6 that began production in 2011, specifically the worldwide marketed T6, Ford has produced versatile cars that have been able to satisfy both offroad and comfort qualities which many offroading fanatics have been seeking in offroad-capable cars.',
      imageUrl: 'assets/Ford Ranger 3.2L(Raptor Kitted).jpg', // Replace with your image asset path
      cost: 389000,
    ),
    // Add more models as needed
  ];
  Ford({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('FORD models'),
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