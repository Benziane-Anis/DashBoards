import 'package:flutter/material.dart';

class ThirdDashboard extends StatelessWidget {
  const ThirdDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: SizedBox(
              height: 30,
              width: 30,
              child: Icon(Icons.home_filled,color: Colors.black,),
            ),
              label: "home"
            ),
            BottomNavigationBarItem(icon: SizedBox(
              height: 30,
              width: 30,
              child: Icon(Icons.area_chart_sharp,color: Colors.black,),
            ),
                label: "chart"
            ),
            BottomNavigationBarItem(icon: SizedBox(
              height: 30,
              width: 30,
              child: Icon(Icons.notifications,color: Colors.black,),
            ),
                label: "home"
            ),
            BottomNavigationBarItem(icon: SizedBox(
              height: 30,
              width: 30,
              child: Icon(Icons.place_outlined,color: Colors.black,),
            ),
                label: "home"
            ),
            BottomNavigationBarItem(icon: SizedBox(
              height: 30,
              width: 30,
              child: Icon(Icons.person_pin,color: Colors.black,),
            ),
                label: "home"
            ),

      ]),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, "/1");
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )),
        ],
        elevation: 32,
        title: const Text(
          'Third Dashboard',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/circle.png',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 50.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        '345',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32),
                                      ),
                                      const Text(
                                        'REACH',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Colors.green,
                                          ),
                                          Text('8.1 %')
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        'Social Star',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        child: Image.asset('assets/images/people.png',
                            fit: BoxFit.fill),
                      )
                    ],
                  ),
                ),
                Container(width: double.infinity,height: 6,color: Colors.grey.shade300,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      RichText(

                          text: const TextSpan(
                              children:  <TextSpan>[
                                TextSpan(
                                  text: 'This week',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'montserrat re')
                                )
                              ],
                              text: 'Key matrice ',style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'montserrat re')),

                      ),

                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            elevation: 20,
                            shadowColor: Colors.purple,
                            child: SizedBox(
                              height: 80,
                              width: 150,
                              child: Row(
                                children: [
                                  const SizedBox(width: 5,),
                                  CircleAvatar(

                                    radius: 25,
                                    backgroundColor: Colors.purple.shade200,
                                    child: const Icon(Icons.show_chart,color: Colors.purple,),
                                  ),
                                  const SizedBox(width: 10,),
                                  Column(
crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [Text('VISITS',style: TextStyle(fontFamily: 'montserrat re'),),
                                      Text('4,324',style: TextStyle(fontFamily: 'montserrat re',fontWeight: FontWeight.bold,fontSize: 25),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            elevation: 20,
                            shadowColor: Colors.green,
                            child: SizedBox(
                              height: 80,
                              width: 150,
                              child: Row(
                                children: [
                                  const SizedBox(width: 5,),
                                  CircleAvatar(

                                    radius: 25,
                                    backgroundColor: Colors.green.shade200,
                                    child: const Icon(Icons.thumb_up_alt_outlined,color: Colors.green,),
                                  ),
                                  const SizedBox(width: 10,),
                                  Column(
crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [Text('LIKE',style: TextStyle(fontFamily: 'montserrat re'),),
                                      Text('654',style: TextStyle(fontFamily: 'montserrat re',fontWeight: FontWeight.bold,fontSize: 25),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            elevation: 20,
                            shadowColor: Colors.yellow,
                            child: SizedBox(
                              height: 80,
                              width: 150,
                              child: Row(
                                children: [
                                  const SizedBox(width: 5,),
                                  CircleAvatar(

                                    radius: 25,
                                    backgroundColor: Colors.yellow.shade200,
                                    child: const Icon(Icons.star_border,color: Colors.yellow,),
                                  ),
                                  const SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [Text('FAVORITES',style: TextStyle(fontFamily: 'montserrat re'),),
                                      Text('855',style: TextStyle(fontFamily: 'montserrat re',fontWeight: FontWeight.bold,fontSize: 25),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            elevation: 20,
                            shadowColor: Colors.blue,
                            child: SizedBox(
                              height: 80,
                              width: 150,
                              child: Row(
                                children: [
                                  const SizedBox(width: 5,),
                                  CircleAvatar(

                                    radius: 25,
                                    backgroundColor: Colors.blue.shade200,
                                    child: const Icon(Icons.remove_red_eye_outlined,color: Colors.blue,),
                                  ),
                                  const SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [Text('VIEWS',style: TextStyle(fontFamily: 'montserrat re'),),
                                      Text('5,436',style: TextStyle(fontFamily: 'montserrat re',fontWeight: FontWeight.bold,fontSize: 25),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),

                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.circle,size: 15,color: Colors.purple,),
                                    SizedBox(width: 2,),
                                    Text('Visits',style: TextStyle(color: Colors.black),)
                                  ],
                                ),
                                const SizedBox(width: 5,),
                                Row(
                                  children: const [
                                    Icon(Icons.circle,size: 15,color: Colors.green,),
                                    SizedBox(width: 2,),
                                    Text('Likes',style: TextStyle(color: Colors.black),)
                                  ],
                                ),
                                const SizedBox(width: 5,),
                                Row(
                                  children: const [
                                    Icon(Icons.circle,size: 15,color: Colors.red,),
                                    SizedBox(width: 2,),
                                    Text('Conversions',style: TextStyle(color: Colors.black),)
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 25,),
                            Image.asset('assets/images/graph.png',),
                          ],
                        ),
                      )

                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
