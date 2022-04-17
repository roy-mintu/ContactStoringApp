import 'package:flutter/material.dart';

class NoContacts extends StatelessWidget {
  const NoContacts({Key? key, required this.onAdd}) : super(key: key);
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.person_outlined,
            size: 80,
            color: Colors.black45,
          ),
          const Text(
            "No Contacts",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
              // primary: Colors.blue,
              backgroundColor: Colors.blue,
            ),
            onPressed: onAdd,
            child: const Text(
              "Add your Contacts!",
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
