import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomIcons({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 1),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  color: Colors.white,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 37),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
