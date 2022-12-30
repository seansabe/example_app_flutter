import 'package:example_app/pages/description.dart';
import 'package:example_app/pages/widgets/sidebar.dart';
import 'package:example_app/pages/widgets/tile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color backgroundColor = const Color(0xFF0E7A0D);
  Icon toggleIcon = const Icon(Icons.toggle_off_rounded);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (backgroundColor == const Color(0xFF0E7A0D)) {
                    backgroundColor = const Color(0xFF808080);
                    toggleIcon = const Icon(Icons.toggle_on_rounded);
                  } else {
                    backgroundColor = const Color(0xFF0E7A0D);
                    toggleIcon = const Icon(Icons.toggle_off_rounded);
                  }
                });
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: toggleIcon,
              iconSize: 40.0)
        ],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      drawer: const SafeArea(top: false, bottom: false, child: Sidebar()),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              Tile(
                  title: 'Xbox Original',
                  imagePath: 'images/xo_logo.png',
                  backgroundColor: const Color(0xFF000000),
                  textColor: const Color(0xFFFFFFFF),
                  onTap: () => {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Description(
                              title: 'Xbox Original',
                              imagePath: 'images/xo_pic.jpg');
                        }))
                      }),
              const SizedBox(height: 50.0),
              Tile(
                  title: 'Xbox 360',
                  imagePath: 'images/x360_logo.png',
                  backgroundColor: const Color(0xFFFFFFFF),
                  textColor: const Color(0xFF282828),
                  onTap: () => {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Description(
                              title: 'Xbox 360',
                              imagePath: 'images/x360_pic.jpg');
                        }))
                      }),
              const SizedBox(height: 50.0),
              Tile(
                  title: 'Xbox One',
                  imagePath: 'images/xone_logo.png',
                  backgroundColor: const Color(0xFFFFFFFF),
                  textColor: const Color(0xFF282828),
                  onTap: () => {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Description(
                              title: 'Xbox One',
                              imagePath: 'images/xone_pic.jpg');
                        }))
                      }),
              const SizedBox(height: 50.0),
              Tile(
                  title: 'Xbox Series X|S',
                  imagePath: 'images/xxs_logo.png',
                  backgroundColor: const Color(0xFFFFFFFF),
                  textColor: const Color(0xFF282828),
                  onTap: () => {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Description(
                              title: 'Xbox Series X|S',
                              imagePath: 'images/xxs_pic.jpg');
                        }))
                      }),
              const SizedBox(height: 50.0)
            ],
          ),
        ),
      ),
    );
  }
}
