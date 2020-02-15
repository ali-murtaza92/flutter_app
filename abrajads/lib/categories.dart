import 'package:abrajads/home_page.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f7f6),
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: Text(
          "أبراج للإعلانات",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HomePage("https://abrajads.com/", "أبراج للإعلانات"),
                ),
              );
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a7%d9%84%d8%ad%d9%8a%d9%88%d8%a7%d9%86%d8%a7%d8%aa//",
                            "الحيوانات"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0,
                        MediaQuery.of(context).size.width / 20, 10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/horse-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "الحيوانات",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a7%d9%84%d8%a8%d8%b1-%d9%88%d8%a7%d9%84%d9%85%d8%ae%d9%8a%d9%85%d8%a7%d8%aa/",
                            "البر والمخيمات"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 25,
                        20.0,
                        0.0,
                        10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/campground-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "البر والمخيمات",
                          style: TextStyle(color: Colors.black, fontSize: 27.0),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a5%d9%84%d9%83%d8%aa%d8%b1%d9%88%d9%86%d9%8a%d8%a7%d8%aa/",
                            "إلكترونيات"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0,
                        MediaQuery.of(context).size.width / 20, 10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/laptop-code-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "إلكترونيات",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a7%d9%84%d8%a3%d8%b3%d8%b1%d8%a9/",
                            "الأسرة"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 25,
                        20.0,
                        0.0,
                        10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/users-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "الأسرة",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a7%d9%84%d9%85%d8%a3%d9%83%d9%88%d9%84%d8%a7%d8%aa/",
                            "المأكولات"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0,
                        MediaQuery.of(context).size.width / 20, 10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/utensils-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "المأكولات",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a7%d9%84%d8%a3%d8%ab%d8%a7%d8%ab/",
                            "الأثاث"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 25,
                        20.0,
                        0.0,
                        10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/couch-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "الأثاث",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a7%d9%84%d9%85%d9%82%d8%a7%d9%88%d9%84%d8%a7%d8%aa-%d9%88%d8%a7%d9%84%d8%ad%d8%b1%d9%81/",
                            "المقاولات والحرف"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0,
                        MediaQuery.of(context).size.width / 20, 10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/tools-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "المقاولات والحرف",
                          style: TextStyle(color: Colors.black, fontSize: 21.5),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a7%d9%84%d8%b5%d8%ad%d8%a9/",
                            "الصحة"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 25,
                        20.0,
                        0.0,
                        10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/heartbeat-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "الصحة",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%D8%A7%D9%84%D9%88%D8%B8%D8%A7%D8%A6%D9%81/",
                            "الوظائف"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0,
                        MediaQuery.of(context).size.width / 20, 10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/briefcase-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "الوظائف",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%a5%d8%b9%d9%84%d8%a7%d9%86%d8%a7%d8%aa-%d9%85%d8%aa%d9%86%d9%88%d8%b9%d8%a9/",
                            "إعلانات متنوعة"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 25,
                        20.0,
                        0.0,
                        10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/ad-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "إعلانات متنوعة",
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d9%85%d8%ad%d8%b1%d9%83%d8%a7%d8%aa/",
                            "محركات"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0,
                        MediaQuery.of(context).size.width / 20, 10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/car-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "محركات",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%b9%d9%82%d8%a7%d8%b1%d8%a7%d8%aa/",
                            "عقارات"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 25,
                        20.0,
                        0.0,
                        10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/home-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "عقارات",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%ae%d8%af%d9%85%d8%a7%d8%aa-%d9%85%d8%aa%d8%b9%d8%af%d8%af%d8%a9/",
                            "خدمات متعددة"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0,
                        MediaQuery.of(context).size.width / 20, 10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/hands-helping-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "خدمات متعددة",
                          style: TextStyle(color: Colors.black, fontSize: 27.0),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            "https://abrajads.com/category/%d8%aa%d8%af%d8%b1%d9%8a%d8%a8-%d9%88%d8%aa%d8%af%d8%b1%d9%8a%d8%b3/",
                            "تدريب وتدريس"),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 25,
                        20.0,
                        0.0,
                        10.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/chalkboard-teacher-solid.png',
                          height: 150.0,
                          width: 150.0,
                        ),
                        Text(
                          "تدريب وتدريس",
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
