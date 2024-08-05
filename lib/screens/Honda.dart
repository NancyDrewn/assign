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

class  Honda extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'HONDA CRV',
      description: "This Honda CRV is specced with 5 leather seats, android infotainment display system, dual zone climate controls, cup holders, and an automatic transmission gearbox.",
      imageUrl: 'assets/Honda CRV.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'HONDA ODYSSEY',
      description: "Honda Odyssey is a minivan that has been in production since 1994. This is the 4th Gen produced since 2008 with its engine and transmission remaining the same as the 3rd gen Odyssey. It runs a 2.4L engine mated to a 5-Speed automatic transmission. It is quite a reliable minivan spacious enough to handle 7 individuals with the 3rd row being foldable.",
      imageUrl: 'assets/Honda Odyssey.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'HONDA VEZEL',
      description:"This is the Non-hybrid version of Honda Vezel running a 1.5L Petrol engine. Its other specs include fabric seats, dual zone climate controls, Infotainment system display screen, reverse camera, Push-start ignition, Multifunctional steering wheel, and Antilock braking system." ,
      imageUrl: 'assets/Honda Vezel.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'HONDA VEZEL HYBRID',
      description: "The Vezel Hybrid is specced with a 1.5L petrol engine with a complimentary hybrid system, daytime running lights, Infotainment system display screen, reverse camera, Multifunctional steering wheel, and foglamps.",
      imageUrl: 'assets/Honda Vezel Hybrid.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'HONDA VEZEL HYBRID RS.jpg',
      description: "The Vezel RS Hybrid is specced with a 1.5L petrol engine with a complimentary hybrid system, daytime running lights, Infotainment system display screen, reverse camera, Multifunctional steering wheel, and foglamps.",
      imageUrl: 'assets/Honda Vezel Hybrid RS.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  Honda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('HONDA Models'),
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