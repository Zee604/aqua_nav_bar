## Aqua Nav Bar

The Aqua Nav Bar Flutter package provides a beautiful and customizable navigation bar for your Flutter applications. It offers a sleek and modern design with smooth animations, making it perfect for enhancing the user experience in your app.

## Screenshots

<img src="https://i.postimg.cc/jS0FF2bp/s1.png" width="300" />
<img src="https://i.postimg.cc/sgYNdzfv/s2.png" width="300" />



## Features
• Beautiful and modern design.<br>
• Smooth and fluid animations.<br>
• Customizable colors, icons, and labels.<br>
• Support for both iOS and Android platforms.<br>
• Easy integration with existing Flutter projects.

## Installation
To use the Aqua_Nav_Bar package, follow these steps:

1. Add the package to your pubspec.yaml file:
```yaml
 dependencies:
   aqua_nav_bar: <latest version>
```

2. Run the following command to fetch the package:
```yaml
 flutter pub get
```
3. Import the package in your Dart code:
```yaml
import 'package:aqua_nav_bar/aqua_nav_bar.dart';
```

## Usage
To use the Aqua_Nav_Bar in your Flutter app, see example:

```dart
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

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AquaNavBar(
        currentIndex: currentIndex,
        textSize: 15.0,
        activeColor: Colors.grey,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
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
        child:  _navPages[currentIndex],
      ),
    );
  }
}
```

## Contributions and Support
Contributions to the Aqua_Nav_Bar Flutter package are welcomed and encouraged! If you encounter any issues or have suggestions for improvement, please open an issue on the package's [GitHub repository](https://github.com/Zee604/aqua_nav_bar.git).

## License
**This project is licensed under the [MIT License](https://opensource.org/license/mit/).**
