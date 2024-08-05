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

class Volvo extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'VOLVO  V40 T5 AWD',
      description: "Volvo V40 Cross Country was produced from 2013 to 2019. It is different from the normal V40 in terms of engine size and body design. It has protective body panels, bigger wheels and tyres with an increased ride height. Some variants of the V40 Cross Country feature 2-wheel drive. The T4 and T5 variants of V40 Cross Country features Haldex Gen-5 All Wheel Drive as an optional feature along with Hill descent control. It runs a 2.0L of model code B4204T11 with power rating of 245hp and 350Nm of torque. You would look at it and think this is one good performer!",
      imageUrl: 'assets/Volvo V40 T5 AWD.jpg', // Replace with your image asset path
      cost: 546800,
    ),
    FordModel(
      name: 'VOLVO V60 T6',
      description: "The XC60 T6 AWD is specced powered seats, Multifunctional tilt & telescopic steering wheel, Premium surround sound system, daytime running LED lights, downhill speed regulation system, active parking assist system, ambient lighting, and Smartphone integration.",
      imageUrl: 'assets/Volvo V60 T6.jpg', // Replace with your image asset path
      cost:  400060,
    ),
    FordModel(
      name: 'VOLVO XC60',
      description: "With the concept car appearing in 2007, sales of the XC60 first gen began in 2008 in Europe and has been Volvo's best selling car since 2009. Volvo was created with a tune of Landrover's offroading capabilities and Volvo's technologies. This makes it one of the best Multipurpose, in the sense of one can operate them at different terrains and for different events, and it will never let one down. The aesthetics are on point, extremely well done, safety earns is a solid 5 star rating from both official tests and consumer reports, and performance is top notch, a marvel. The unit listed is the 2nd Gen that began production in 2017. An Inscription T5 AWD Setup Volvo XC60, quite a beauty to look at. It runs a B4204T 2000cc engine doing 251 horsepowers and 350Nm of torque in an engine orientation of inline 4 plus a turbocharger. Volvo is your next home!",
      imageUrl: 'assets/Volvo XC60.jpg', // Replace with your image asset path
      cost: 341500,),
    FordModel(
      name: 'VOLVO XC60 T5',
      description: "The best selling car by Volvo, the XC60, has to come in a number of trims and variants that satisfy customers with different preferences. The T5 is one of them which is the diesel variant powered by a 2.0L turbocharged petrol engine with a power rating of 240hp. It is fitted with a sunroof and a polished metal trimming on the interior.",
      imageUrl: 'assets/Volvo XC60 T5.jpg', // Replace with your image asset path
      cost: 464000,
    ),
    FordModel(
      name: 'VOLVO XC90',
      description: "This is the 2nd Gen XC90 T5 that appeared in 2014 before officially launching in 2015. 1st Edition of an all-new XC90 units were produced in 2014 with a total of 1927 numbered cars selling out in only 47hours. The First edition models featured an Onyx black finish and every other feature Volvo could offer. This 2017 model also features a number of features which are a big deal including a panoramic sunroof, leather seats with third row-seating capacity with both the front and rear occupants having a heating functionality, Premium surround sound system that makes the cabin feel like a large Orchestral theatre, steering wheel controls, and all the safety systems Volvo have ever come up with including City safety and Run-off-road protection package that controls the seats comfort level and belts adjustment to deliver a comfortable offroading experience.",
      imageUrl: 'assets/Volvo XC90.jpg', // Replace with your image asset path
      cost: 350090,
    ),
    // Add more models as needed
  ];
  Volvo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('VOLVO models'),
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