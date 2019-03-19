import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
  // This widget is the root of your application.

}

class MyHomePageState extends State<MyHomePage> {

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Color(getColorHexFromStr("#FDD148")),

                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Color(getColorHexFromStr("#FEE16D"))
                              .withOpacity(0.4)
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          color: Color(getColorHexFromStr("#FEE16D"))
                              .withOpacity(0.5)
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        children: <Widget>[
                          SizedBox(
                              width: 15
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0
                                ),
                                image: DecorationImage(
                                    image: AssetImage('assets/benachir.jpg'))
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 120.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),

                          )
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Hello , KBENO',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'what do you want to buy ?',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: Color(getColorHexFromStr("FEE16D")),
                                    size: 30.0),
                                contentPadding: EdgeInsets.only(
                                    left: 15.0, top: 15.0),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontFamily: 'Quicksand'
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),

                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Stack(
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Material(
                    elevation: 1.0,
                    child: Container(
                        height: 75.0,
                        color: Colors.white

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/benachir.jpg')
                                  )
                              ),
                            ),
                            Text(
                              'Sofas', style: TextStyle(
                                fontFamily: 'Quicksand'
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/benachir.jpg')
                                  )
                              ),
                            ),
                            Text(
                              'Sofas', style: TextStyle(
                                fontFamily: 'Quicksand'
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/benachir.jpg')
                                  )
                              ),
                            ),
                            Text(
                              'Sofas', style: TextStyle(
                                fontFamily: 'Quicksand'
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/benachir.jpg')
                                  )
                              ),
                            ),
                            Text(
                              'Sofas', style: TextStyle(
                                fontFamily: 'Quicksand'
                            ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              itemCard('FunnNavian1', 'assets/benachir.jpg', false),
              itemCard('FunnNavian2', 'assets/benachir.jpg', true),
              itemCard('FunnNavian3', 'assets/benachir.jpg', false)



            ],
          )
        ],
      ),
    );
  }
    Widget itemCard(String title,String imagePath,bool isFavorable){
      return Padding(
        padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0),
        child: Container(
          height: 150.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePath))
                ),
              ),
              SizedBox(width: 4.0,),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0
                        ),
                      ),
                      SizedBox(width: 65.0,),
                      Material(
                        elevation: isFavorable? 0.0:2.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: isFavorable?Colors.grey.withOpacity(0.2):
                                Colors.white
                          ),
                          child: Center(
                            child: isFavorable?
                            Icon(
                              Icons.favorite_border
                            ):
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    width: 175.0,
                    child: Text(
                      'hey there , i m just trying to learn something new here so i wish a good night hhhh ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                        fontSize: 12.0
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 35),
                      Container(
                        height: 40.0,
                        width: 60.0,
                        color: Color(getColorHexFromStr("#F9C335")),
                        child: Center(
                          child: Text(
                            '\$248',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        width: 110.0,
                        color: Color(getColorHexFromStr("#FEDD59")),
                        child: Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );
    }
  }






