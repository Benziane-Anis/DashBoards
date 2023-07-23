import 'package:flutter/material.dart';


class SecondDashboard extends StatefulWidget {
  const SecondDashboard({super.key});

  @override
  State<SecondDashboard> createState() => _SecondDashboardState();
}

class _SecondDashboardState extends State<SecondDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text('Second Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.shade400,
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, "/3");
          }, icon: Icon(Icons.arrow_forward)),

        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/images/top_header.png"))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children:  [
                     const CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage('assets/images/anis.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Hi Anis!',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              fontFamily: 'montserrat me'

                            ),),
                            Text('Good Morning',style: TextStyle(fontFamily: 'montserrat me'),
                            ),
                          ],
                        ),
                      ),
                     const SizedBox(width: 100,),
                     IconButton(onPressed: () {
                       
                     }, icon: const Icon(Icons.settings))
                    ],
                  ),
                  const SizedBox(height: 32,),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                      children: [
                        Card(
                          elevation: 16,
                          shadowColor: Colors.greenAccent.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.person_pin,size: 128,color: Colors.red,),
                              Text("Personal Data",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'montserrat re'
                              ),)
                            ],
                          ),
                        ),
                        Card(
                          elevation: 16,
                          shadowColor: Colors.greenAccent.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.book,size: 128,color: Colors.blue,),
                            Text("Books",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'montserrat re'
                            ),)
                            ],
                          ),
                        ),
                        Card(
                          elevation: 16,
                          shadowColor: Colors.greenAccent.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.date_range,size: 128,color: Colors.green,),
                            Text("Plannings",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'montserrat re'
                            ),)
                            ],
                          ),
                        ),

                        Card(
                          elevation: 16,
                          shadowColor: Colors.greenAccent.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.note_alt_outlined,size: 128,color: Colors.yellowAccent,),
                              Text("Notes",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'montserrat re'
                              ),)
                            ],
                          ),
                        ),
                        Card(
                          elevation: 16,
                          shadowColor: Colors.greenAccent.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.monetization_on_outlined,size: 128,color: Colors.brown,),
                              Text("Cash",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'montserrat re'
                              ),)
                            ],
                          ),
                        ),
                        Card(
                          elevation: 16,
                          shadowColor: Colors.greenAccent.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.logout,size: 128,color: Colors.red,),
                              Text("Logout",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'montserrat re'
                              ),)
                            ],
                          ),
                        ),


                      ]),
                  )
                ],
              ),
            )
          ],
        )
      ),
    ) ;
  }
}
