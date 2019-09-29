import 'package:flutter/material.dart';
import 'package:sky_mvp/styleguide.dart';
import 'package:sky_mvp/widget/card_country.dart';
import 'package:flip_card/flip_card.dart';

class CountryListingScreen extends StatefulWidget {
  CountryListingScreen({Key key}) : super(key: key);

  _CountryListingScreenState createState() => _CountryListingScreenState();
}

class _CountryListingScreenState extends State<CountryListingScreen> {
  PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        viewportFraction: 1.0, initialPage: currentPage, keepPage: false);
  }

  List<CardCountry> citycards = [
    CardCountry(
      "assets/img/holanda.jpg",
      "Holanda",
      "holanda",
    ),
    CardCountry(
      "assets/img/lasvegas.jpg",
      "Las vegas",
      "EUA",
    ),
    CardCountry(
      "assets/img/lisboa.jpg",
      "Lisboa",
      "Portugal",
    ),
    CardCountry(
      "assets/img/riodejaneiro.jpg",
      "Rio de Janeiro",
      "Brasil",
    )
  ];

  List<CardCitysPop> citycardspop = [
    CardCitysPop(
      imagePathpop: "assets/img/holanda.jpg",
      cityNamepop: "Holanda",
      mounthYearpop: "holanda",
    ),
    CardCitysPop(
      imagePathpop: "assets/img/lasvegas.jpg",
      cityNamepop: "Las vegas",
      mounthYearpop: "EUA",
    ),
    CardCitysPop(
      imagePathpop: "assets/img/lisboa.jpg",
      cityNamepop: "Lisboa",
      mounthYearpop: "Portugal",
    ),
    CardCitysPop(
      imagePathpop: "assets/img/riodejaneiro.jpg",
      cityNamepop: "Rio de Janeiro",
      mounthYearpop: "Brasil",
    )
  ];

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.search,
              size: 35,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Prepare-se para viajar",
                          style: AppTheme.display1.copyWith(fontSize: 35.0)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        "Inspire-se",
                        style: AppTheme.heading
                            .copyWith(color: Colors.black, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: FlipCard(
                      key: cardKey,
                      front: Container(
                        child: Container(
                          width: 300,
                          height: 150,
                          //alignment: Alignment.center,
                          child: Card(
                            color: Color(0xFFF5F0E3),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.local_airport, size: 50),
                                  title: Text(
                                      "Precisa de ajuda para decidir o destino?",
                                      style: AppTheme.subHeading2),
                                  subtitle: Text('Encontre destinos incríveis'),
                                  dense: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      back: Container(
                        child: Container(
                          width: 300.0,
                          height: 150.0,
                          child:
                              /*CardCitysPop(
                          imagePathpop: "assets/img/holanda.jpg",
                          cityNamepop: "Holanda",
                          mounthYearpop: "holanda",
                        ), */
                              Card(
                            color: Color(0xFFF8C765),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.place, size: 50),
                                  title: Text(
                                      "Precisa de ajuda para decidir o destino?",
                                      style: AppTheme.subHeading2),
                                  subtitle: Text('Encontre destinos incríveis'),
                                  dense: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 32.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Melhores Rotas",
                            style: AppTheme.heading
                                .copyWith(color: Colors.black, fontSize: 16.0))
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 210.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: citycards,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 32.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Melhores Rotas",
                            style: AppTheme.heading
                                .copyWith(color: Colors.black, fontSize: 16.0))
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 220.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: CardCitysPop(
                        imagePathpop: "assets/img/holanda.jpg",
                        cityNamepop: "Holanda",
                        mounthYearpop: "holanda",
                      ),
                      /*ListView(
                        //scrollDirection: Axis.horizontal,
                        children: citycardspop,
                      ),*/
                    ),
                  ),
                  Container(
                    height: 220.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: CardCitysPop(
                        imagePathpop: "assets/img/lasvegas.jpg",
                        cityNamepop: "Las vegas",
                        mounthYearpop: "EUA",
                      ),
                      /*ListView(
                        //scrollDirection: Axis.horizontal,
                        children: citycardspop,
                      ),*/
                    ),
                  ),
                  Container(
                    height: 220.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: CardCitysPop(
                        imagePathpop: "assets/img/lisboa.jpg",
                        cityNamepop: "Lisboa",
                        mounthYearpop: "Portugal",
                      ),
                      /*ListView(
                        //scrollDirection: Axis.horizontal,
                        children: citycardspop,
                      ),*/
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
