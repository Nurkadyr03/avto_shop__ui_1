import 'package:flutter/material.dart';

import 'models.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List<Cars> list = [
    Cars('Lada', '2023', '2000', 'white', '20000', 'assets/lada_07.jpg'),
    Cars('Ferrari', '1999', ' 2', 'yellow', '1632200', 'assets/car_images.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Icon(Icons.add_a_photo_outlined),
          SizedBox(
            width: 15.0,
          ),
          Icon(Icons.attach_money_outlined),
          SizedBox(
            width: 15.0,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 10.0,
          ),
        ],
        title: const Text('AvtoShop', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          myCar(
            list[0],
          ),
          myCar(list[1]),
          myCar(list[1]),
          myCar(list[0]),
          myCar(list[1]),
          myCar(list[1]),
          myCar(list[0]),
          myCar(list[1]),
        ],
      ),
    );
  }

  Widget myCar(Cars info) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 120,
          child: Card(child: Image.asset(info.foto)),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text('Model:  '),
                Text(info.model,
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ],
            ),
            Text('Year of issue:' + '  ' + info.year),
            Text('Mileage:' + '  ' + info.mileAge + ' ' + 'km'),
            Text('Color:' + '  ' + info.color),
            Text('Price:' + ' ' + info.price + ' ' + 'som'),
          ],
        ),
      ],
    );
  }
}


