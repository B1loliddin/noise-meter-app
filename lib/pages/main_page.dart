import 'package:flutter/material.dart';
import 'package:noise_meter_app/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController controller;
  int selectedItem = 1;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: selectedItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 65,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/info_page');
          },
          splashRadius: 25,
          iconSize: 26,
          icon: const Icon(
            Icons.info_outline,
            color: Colors.grey,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/settings_page');
            },
            splashRadius: 25,
            iconSize: 26,
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (int value) => setState(() => selectedItem = value),
        children: <Widget>[
          Container(color: Colors.red),
          const HomePage(),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
        ],
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Material(
            color: selectedItem == 0 ? Colors.grey[300] : null,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                setState(() => selectedItem = 0);
                controller.animateToPage(
                  selectedItem,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.linear,
                );
              },
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width / 4,
                child: const Icon(
                  Icons.save_outlined,
                  size: 26,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Material(
            color: selectedItem == 1 ? Colors.grey[300] : null,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                setState(() => selectedItem = 1);
                controller.animateToPage(
                  selectedItem,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.linear,
                );
              },
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width / 4,
                child: const Icon(
                  Icons.mic,
                  size: 26,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Material(
            color: selectedItem == 2 ? Colors.grey[300] : null,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                setState(() => selectedItem = 2);
                controller.animateToPage(
                  selectedItem,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.linear,
                );
              },
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width / 4,
                child: const Icon(
                  Icons.list,
                  size: 26,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Material(
            color: selectedItem == 3 ? Colors.grey[300] : null,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                setState(() => selectedItem = 3);
                controller.animateToPage(
                  selectedItem,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.linear,
                );
              },
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width / 4,
                child: const Icon(
                  Icons.timer_outlined,
                  size: 26,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
