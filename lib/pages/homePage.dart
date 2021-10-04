import 'package:campaign/themes/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: size.height * 0.6,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: bgColor,
                    image: DecorationImage(
                        image: AssetImage("assets/images/tree_bg.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Image.asset("assets/images/burger_icon.png"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/profile_icon.png"),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome",
                                    style: TextStyle(
                                        color: textWhite.withOpacity(0.7)),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Badr raghb",
                                    style: TextStyle(
                                        color: textWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              )
                            ],
                          ),
                          Image.asset("assets/images/notification_icon.png")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: textWhite,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here",
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discover",
                            style: appTitle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                DiscoverCard(
                                  url: "assets/images/tent_icon.png",
                                  title: "Campus",
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                DiscoverCard(
                                  url: "assets/images/fishing_icon.png",
                                  title: "Fishing",
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                DiscoverCard(
                                  url: "assets/images/cooking_icon.png",
                                  title: "Cooking",
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.61),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: textWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        child: Container(
                          width: 50,
                          height: 3,
                          decoration: BoxDecoration(
                              color: textBlack.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Popular Destinations",
                        style: TextStyle(
                            color: textBlack.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            CardDestination(
                              imgSrc:
                                  "https://images.unsplash.com/photo-1550236520-7050f3582da0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                              perNight: "45/night",
                              title: "Sandy Ridge Camping",
                              subTitle: "canton",
                              reviews: "86",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CardDestination(
                              imgSrc:
                                  "https://images.unsplash.com/photo-1536431311719-398b6704d4cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                              perNight: "36/night",
                              title: "Richardson Creed",
                              subTitle: "ecoRich",
                              reviews: "36",
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardDestination extends StatelessWidget {
  final String imgSrc;
  final String perNight;
  final String title;
  final String subTitle;
  final String reviews;
  const CardDestination({
    Key key,
    this.perNight,
    this.title,
    this.subTitle,
    this.reviews,
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(image: NetworkImage(imgSrc), fit: BoxFit.cover)),
      child: Stack(
        children: <Widget>[
          Container(
            width: 200,
            height: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: new LinearGradient(colors: [
                  textBlack.withOpacity(0.9),
                  textBlack.withOpacity(0.0)
                ], begin: FractionalOffset(0, 1), end: FractionalOffset(0, 0))),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        color: primary,
                        onPressed: () {},
                        child: Text(
                          "\$$perNight",
                          style: TextStyle(color: textWhite),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: textWhite, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(color: textWhite.withOpacity(0.6)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: starColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: starColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: starColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: starColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: starColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "$reviews Reviews",
                        style: TextStyle(color: textWhite.withOpacity(0.6)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  final String url;
  final String title;
  const DiscoverCard({Key key, this.title, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(url),
          Text(
            title,
            style: TextStyle(color: textBlack.withOpacity(0.8)),
          )
        ],
      ),
    );
  }
}
