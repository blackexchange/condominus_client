import 'package:flutter/material.dart';
import '../../../../../../main/constants.dart';
import '../../../components/components.dart';
import '../../../screens/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
                itemCount: titles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) => ItemCard(
                      menu: titles[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: titles[index],
                            ),
                          )),
                    )),
          ),
        ),
        Container(
            padding: EdgeInsets.all(5),
            height: 108,
            width: double.maxFinite,
            child: 1 == 1
                ? ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Stack(children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 1, top: 1),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              cryptoIcon(),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              cryptoNameSymbol(),
                                              Spacer(),
                                              cryptoChange(),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                        ),
                      );
                    })
                : const Center(
                    child: Text("No Items"),
                  ))
      ],
    );
  }
}

Widget cryptoIcon() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          Icons.chat,
          color: Colors.amber,
          size: 36,
        )),
  );
}

Widget cryptoNameSymbol() {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        text: 'Autorização',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        children: <TextSpan>[
          TextSpan(
              text: '\nRicardo Moreira',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              )),
          TextSpan(
              text: '\nCPF: 421.221.000-12',
              style: TextStyle(color: Colors.grey, fontSize: 16)),
        ],
      ),
    ),
  );
}

Widget cryptoChange() {
  return Align(
    alignment: Alignment.topRight,
    child: RichText(
      text: TextSpan(
        text: 'Vila Bela',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16),
        children: <TextSpan>[
          TextSpan(
              text: '\n102',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}

Widget changeIcon() {
  return Align(
      alignment: Alignment.topRight,
      child: Icon(
        Icons.access_alarm,
        color: Colors.green,
        size: 30,
      ));
}

Widget cryptoAmount() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '\n\$12.279',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 35,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '\n0.1349',
                    style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
