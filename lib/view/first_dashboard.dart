import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstDashboard extends StatefulWidget {
  const FirstDashboard({Key? key}) : super(key: key);

  @override
  State<FirstDashboard> createState() => _FirstDashboardState();
}

class _FirstDashboardState extends State<FirstDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, "/2");
          }, icon: Icon(Icons.arrow_forward)),

        ],
        elevation: 20,
        title: const Text('First Dashboard'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                      title: Text(
                        "Hi ANIS!",
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Good Morning',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white54),
                      ),
                      trailing: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/anis.jpg'),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              Container(
                color: Theme.of(context).primaryColor,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30,
                      vertical: 30
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      )),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 10,
                    children: [
                      itemDashBord('video', CupertinoIcons.play_rectangle, Colors.deepOrange),
                      itemDashBord('Analytics', CupertinoIcons.graph_circle, Colors.green),
                      itemDashBord('Audience', CupertinoIcons.person_2, Colors.purple),
                      itemDashBord('Comments', CupertinoIcons.chat_bubble_2, Colors.brown),
                      itemDashBord('Revenue', CupertinoIcons.money_dollar_circle, Colors.indigo),
                      itemDashBord('Upload', CupertinoIcons.add_circled, Colors.teal),
                      itemDashBord('About', CupertinoIcons.question_circle, Colors.blue),
                      itemDashBord('Contact', CupertinoIcons.phone, Colors.pinkAccent),
                      itemDashBord('Projects', CupertinoIcons.paperclip, Colors.yellow),
                      itemDashBord('Log Out', CupertinoIcons.arrow_right_circle, Colors.red),

                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
  itemDashBord(String title, IconData iconData , Color background) => Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).primaryColor.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 5
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle,

          ),
          child: Icon(iconData,color: Colors.white,),
        ),
        const SizedBox(height: 20,),
        Text(title, style: Theme.of(context).textTheme.headlineSmall,)
      ],
    ),
  );
}
