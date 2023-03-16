import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Navigation Screen'),
        ),
        floatingActionButton: const FloatingButton(),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.pink,
      onPressed: () {
        int newNumber =
            Provider.of<_NotificationModel>(context, listen: false).number;
        newNumber++;
        Provider.of<_NotificationModel>(context, listen: false).number =
            newNumber;
      },
      child: const FaIcon(FontAwesomeIcons.play),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final int notificationNumber =
        Provider.of<_NotificationModel>(context).number;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: [
        const BottomNavigationBarItem(
          label: 'Bones',
          icon: FaIcon(FontAwesomeIcons.bone),
        ),
        BottomNavigationBarItem(
          label: 'Notifications',
          icon: Stack(
            children: <Widget>[
              const FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 0.0,
                right: 0.0,
                // child: Icon(Icons.brightness_1, size: 8, color: Colors.redAccent),
                child: Container(
                  alignment: Alignment.center,
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$notificationNumber',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const BottomNavigationBarItem(
          label: 'Dog',
          icon: FaIcon(FontAwesomeIcons.dog),
        ),
      ],
    );
  }
}

class _NotificationModel extends ChangeNotifier {
  int _number = 0;

  int get number => _number;

  set number(int value) {
    _number = value;
    notifyListeners();
  }
}
