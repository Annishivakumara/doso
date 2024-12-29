import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool Today = true, Tommorow = false, Nextweek = false, suggest = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color(0xff009da2),
          size: 30.0,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 25, top: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff23da9d),
          Color(0xFF13D8CA),
          Color(0xFF09adfe)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'HELLO\nSHIVU',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              'Good Morning',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Today
                    ? Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          decoration: BoxDecoration(
                              color: Color(0xFF3dffe3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'Today',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Today = true;
                          Tommorow = false;
                          Nextweek = false;
                          setState(() {});
                        },
                        child: Text(
                          'Today',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                Tommorow
                    ? Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          decoration: BoxDecoration(
                              color: Color(0xFF3dffe3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'Tommorow',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Today = false;
                          Tommorow = true;
                          Nextweek = false;
                          setState(() {});
                        },
                        child: Text(
                          'Tommorow',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                Nextweek
                    ? Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          decoration: BoxDecoration(
                              color: Color(0xFF3dffe3),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'NextWeek',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Today = false;
                          Tommorow = false;
                          Nextweek = true;
                          setState(() {});
                        },
                        child: Text(
                          'NextWeek',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ],
            ),
            SizedBox(height: 20.0),
            CheckboxListTile(
              activeColor: Color(0xff000d0a),
              title: Text(
                'go to the gym',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              value: suggest,
              onChanged: (newValue) {
                setState(() {
                  suggest = newValue!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],
        ),
      ),
    );
  }
}
