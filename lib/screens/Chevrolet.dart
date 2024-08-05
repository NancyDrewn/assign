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

class Chevrolet extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: '2024-CHEVY-SILVERADO-EV-RST',
      description: '',
      imageUrl: 'assets/2024-Chevy-Silverado-EV-RST-Model-Left.jpeg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'CHEVROLET-CORVETTE',
      description: '',
      imageUrl: 'assets/chevrolet-corvette.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'CHEVROLET AVEO',
      description: '',
      imageUrl: 'assets/Chevrolet Aveo.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'CHEVROLET SPARK',
      description: '',
      imageUrl: 'assets/chevrolet SPARK.jpeg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'CHEVROLET_TAHOE',
      description: '',
      imageUrl: 'assets/Chevrolet_Tahoe.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  Chevrolet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('CHEVROLET Models'),
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