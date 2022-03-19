import 'package:flutter/material.dart';
import 'package:zodiac_signs/screens/login_screen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              height: 70,
            ),
            const SizedBox(
              child: Text(
                "Zodiac Signs",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              height: 70,
            ),
            const Divider(
              thickness: 1,
            ),
            navRow(Icons.settings, "Setting", context),
            navRow(Icons.feedback, "Feedback", context),
            navRow(Icons.explicit, "About Us", context),
          ],
        ),
      ),
    );
  }

  GestureDetector navRow(icon, text, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) =>const LoginPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 30.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                icon,
                color: Colors.blueGrey,
                size: 30,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                text,
                style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
