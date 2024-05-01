import 'package:explore_mundo/components/menu.dart';
import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Menu(),
            Center(child: Text('Sobre', style: TextStyle(fontSize: 25))),
            Center(
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor fermentum ex, ac interdum tortor hendrerit eget. Sed sed nulla nec nisl rutrum feugiat. Nulla facilisi. Proin bibendum augue eget ligula aliquam, nec tincidunt tortor malesuada. Integer sit amet enim in lorem placerat fringilla. Ut id metus vehicula, ultricies dui vel, hendrerit nisi. Sed ac mi commodo, feugiat ipsum non, mollis odio. Sed pretium vitae justo ac fringilla. Suspendisse potenti. In hac habitasse platea dictumst. Vivamus laoreet nisi a risus cursus, ut tristique justo molestie. Sed venenatis nulla in efficitur iaculis. Vivamus commodo eros at turpis venenatis, in finibus orci placerat.'),
            )
          ],
        ));
  }
}
