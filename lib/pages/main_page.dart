import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 65,
        leading: IconButton(
          onPressed: () {},
          splashRadius: 25,
          iconSize: 26,
          icon: const Icon(
            Icons.info_outline,
            color: Colors.grey,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.blue,
            ),
            Container(
              width: 375,
              height: 50,
              color: Colors.black54,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width / 4,
              child: const Icon(
                Icons.save,
                size: 26,
                color: Colors.grey,
              ),
            ),
          ),
          Material(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: InkWell(
              onTap: () {},
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
          InkWell(
            onTap: () {},
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
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width / 4,
              child: const Icon(
                Icons.timer,
                size: 26,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
