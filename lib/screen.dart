import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _MyAppState();
}

class _MyAppState extends State<Screen> {
  int lan = 0;
  int the = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: the == 1 ? Colors.black : Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: the == 1 ? Colors.black : Colors.white,
        title: Center(
          child: Text(
            lan == 1 ? 'Settings' : 'Sozlamalar',
            style: TextStyle(color: the == 1 ? Colors.white : Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.account_circle_rounded,
              size: 100,
              color: the == 1 ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(
            height: 5
          ),
          Text(
            lan == 1 ? 'Johnny Depp' : 'Jonni Dep',
            style: TextStyle(
              color: the == 1 ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(
            height: 15
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: the == 1 ? Colors.white : Colors.black,
            ),
            title: Text(
              lan == 1 ? 'About us' : 'Biz haqimizda',
              style: TextStyle(
                color: the == 1 ? Colors.white : Colors.black,
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        child: SizedBox(
                          height: 113,
                          width: 200,
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  setState(() {
                                    lan = 1;
                                    Navigator.pop(context);
                                  });
                                },
                                title: const Text('English'),
                              ),
                              ListTile(
                                onTap: () {
                                  setState(() {
                                    lan = 0;
                                    Navigator.pop(context);
                                  });
                                },
                                title: const Text('Uzbek'),
                              ),
                            ],
                          ),
                        ),
                      ));
            },
            leading: Icon(
              Icons.language,
              color: the == 1 ? Colors.white : Colors.black,
            ),
            title: Text(
              lan == 1 ? 'Select language' : 'Tilni tanlash',
              style: TextStyle(
                color: the == 1 ? Colors.white : Colors.black,
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(
              Icons.sunny,
              color: the == 1 ? Colors.white : Colors.black,
            ),
            title: Text(
              lan == 1 ? 'Theme' : 'Mavzu',
              style: TextStyle(
                color: the == 1 ? Colors.white : Colors.black,
              ),
            ),
            trailing: the == 1
                ? IconButton(
                    icon: Icon(
                      Icons.sunny,
                      color: the == 1 ? Colors.white : Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        the = 0;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(
                      Icons.mode_night,
                      color: the == 1 ? Colors.white : Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        the = 1;
                      });
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
