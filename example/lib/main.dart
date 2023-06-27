import 'package:aqua_nav_bar/aqua_nav_bar.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aqua Nav Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _navPages = [
    const ItemOne(),
    const ItemTwo(),
    const ItemThree()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      bottomNavigationBar: AquaNavBar(
          selectedIndex: selectedIndex,
          textSize: 15.0,
          titleColor: Colors.grey,
          onItemSelected: (index){
          setState(() {
            selectedIndex = index;
          });
          },
          barItems: [
            BarItem(
                title: "Home",
                icon: const Icon(
                  Icons.home,
                  size: 30.0,
                )),

            BarItem(
                title: "Settings",
                icon: const Icon(
                  Icons.settings,
                  size: 30.0,
                )),

            BarItem(
                title: "Profile",
                icon: const Icon(
                  Icons.person,
                  size: 30.0,
                ))
          ], ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  _navPages[selectedIndex],
      ),
    );
  }
}


class ItemOne extends StatelessWidget {
  const ItemOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text("Item One",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),),
      ),
    );
  }
}

class ItemTwo extends StatelessWidget {
  const ItemTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text("Item Two",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}

class ItemThree extends StatelessWidget {
  const ItemThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text("Item Three",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}




