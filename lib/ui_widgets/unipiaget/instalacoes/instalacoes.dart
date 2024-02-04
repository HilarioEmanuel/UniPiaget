import 'package:flutter/material.dart';
import 'details_Instacoes.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/images/bb.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/cc.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/dd.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/e.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/ee.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/ff.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/gg.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/hh.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/ii.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/jj.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/mm.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
  ImageDetails(
    imagePath: 'assets/images/aa.png',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details: "Eu posso tudo fazer em nome de Jesus para dar certo",
  ),
];

class Instalacoes extends StatelessWidget {
  const Instalacoes({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Conheça as nossas Instalações',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (Context) => Details_Instalacoes(
                                imagePath: _images[index].imagePath,
                                title: _images[index].title,
                                price: _images[index].price,
                                details: _images[index].details,
                                photographer: _images[index].photographer,
                                index: index,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: 'logo $index',
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(_images[index].imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: _images.length,
                  ),
                ),
              ),
              // Text('Widget não expandido abaixo'),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;

  ImageDetails(
      {required this.imagePath,
      required this.price,
      required this.photographer,
      required this.title,
      required this.details});
}
