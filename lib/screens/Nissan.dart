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

class Nissan extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'NISSAN XTRAIL',
      description: 'The XTRAIL is equipped with an automatic transmission, daytime running lights, Multifunctional tilt and telescopic steering wheel, and traction control.',
      imageUrl: 'assets/N Xtrail.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'NISSAN FUGA',
      description: 'The Nissan Fuga 250Gt is a premium sedan by Nissan with top equipments that make the car classy and highly sought after. Getting into the dash gives one a precious feel from its super comfy leather seats with lower limb support for the front passenger, climate controls with all individuals able to regulate their own cabins, a classy wooden finish to the interior, and a powerful engine to comfortably pull the car through.',
      imageUrl: 'assets/N FUga.jpg', // Replace with your image asset path
      cost:  124960,
    ),
    FordModel(
      name: 'NISSAN JUKE',
      description: 'Nissan Juke made a debut in 2010 as a production vehicle. In its first year of selling, it surpassed the manufacturers expectation 10 fold and since then it has been received well in the market. It has been purchased in high numbers in Kenya also making it among best selling cars that some have criticised its shape, one that was inspired by a lot of history at Nissan. This unit comes with two-tone fabric seats, climate controls, android infotainment display screen, and a push to start button.',
      imageUrl: 'assets/N Juke.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'NISSAN NOTE E POWER',
      description: 'The Note e-Power was introduced later in 2016 bringing to life the hybrid series in the Nissan Note line. It consists of a 1.2L three-cylinder gasoline engine coded HR12DE and an electric traction motor coded EM57 similar to what Nissan Leafs motor has. The motor has a 1.5 kWh rating. The whole power system works by charging the battery while the motor generates the car is traction. The motor outputs 110hp and 240Nm of torque which typically gets to be the highest power rating of the car as one of the power sources between the engine and the motor gets to power the car one at a time.',
      imageUrl: 'assets/N Note E Power.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'NISSAN SKYLINE',
      description: 'A partnership between Nissan and Daimler between 2014 and 2019 gave birth to this amazing engineering piece, the Skyline 200Gt-t. The car operated Daimlers 2.0L M274 DE20 turbocharged direct injection 4 cylinder petrol engine with a power rating of 208hp and 350Nm of torque and is mated to Daimlers 7G-Tronic auto with manual shift mode. Nissan also did well in the body design of Skyline creating a curvy sharp line body that is sport oriented as seen also with the dual-tip exhaust tailpipes. You get leather seats with the front seats having heating functionality, dual zone climate controls, Multifunctional steering wheel, and cup holders.',
      imageUrl: 'assets/N Skyline.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  Nissan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('NISSAN Models'),
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